# Generated by Django 3.2.25 on 2024-08-13 20:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('spec_review', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='component',
            name='part_number',
            field=models.CharField(blank=True, max_length=50, null=True, unique=True),
        ),
    ]
