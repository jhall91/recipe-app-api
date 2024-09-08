from django.db import models
from django.db.models import UniqueConstraint


class Component(models.Model):
    name = models.CharField(max_length=50, unique=True)
    part_number = models.CharField(max_length=50, unique=True, blank=True, null=True)

    def __str__(self):
        return self.name


import hashlib
from django.core.exceptions import ValidationError

class Specification(models.Model):
    spec_number = models.CharField(max_length=50)
    spec_title = models.CharField(max_length=255)
    spec_authority = models.CharField(max_length=50)
    revision = models.CharField(max_length=50)
    pdf = models.FileField(upload_to='specifications_pdfs/', blank=True, null=True)

    class Meta:
        constraints = [
            UniqueConstraint(fields=['spec_number', 'spec_title', 'revision'], name='unique_specification_revision')
        ]

    def save(self, *args, **kwargs):
        if self.pdf and not self._state.adding:
            new_pdf_hash = self.calculate_pdf_hash(self.pdf)
            if Specification.objects.filter(pdf__isnull=False).exclude(id=self.id).exists():
                for spec in Specification.objects.filter(pdf__isnull=False):
                    existing_pdf_hash = self.calculate_pdf_hash(spec.pdf)
                    if new_pdf_hash == existing_pdf_hash:
                        raise ValidationError("A PDF file with identical content already exists in the database.")

        super().save(*args, **kwargs)

    def calculate_pdf_hash(self, pdf_file):
        if not pdf_file:
            return None

        pdf_file.seek(0)
        hasher = hashlib.md5()
        for chunk in pdf_file.chunks():
            hasher.update(chunk)
        return hasher.hexdigest()

    def __str__(self):
        return f"{self.spec_number} - {self.spec_title} (Rev: {self.revision})"


class Requirement(models.Model):
    components = models.ManyToManyField('Component', related_name='requirements')
    specification = models.ForeignKey(Specification, on_delete=models.CASCADE, related_name='requirements')
    requirement = models.CharField(max_length=255)
    clause = models.CharField(max_length=20, default='N/A')
    page_number = models.IntegerField(default=0)
    deviation = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.requirement
