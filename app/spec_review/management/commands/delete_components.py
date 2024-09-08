from django.core.management.base import BaseCommand
from spec_review.models import Component

class Command(BaseCommand):
    help = 'Delete all records in the Components table'

    def handle(self, *args, **kwargs):
        count, _ = Component.objects.all().delete()
        self.stdout.write(self.style.SUCCESS(f'Deleted {count} record(s) from Components table.'))
