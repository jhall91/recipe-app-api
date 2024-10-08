# Generated by Django 3.2.25 on 2024-08-17 14:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('spec_review', '0003_requirement'),
    ]

    operations = [
        migrations.RenameField(
            model_name='requirement',
            old_name='clause',
            new_name='specification_number',
        ),
        migrations.RemoveField(
            model_name='requirement',
            name='page_number',
        ),
        migrations.RemoveField(
            model_name='requirement',
            name='specification_code',
        ),
        migrations.AlterField(
            model_name='requirement',
            name='components',
            field=models.ManyToManyField(related_name='requirements', to='spec_review.Component'),
        ),
        migrations.AlterModelTable(
            name='requirement',
            table=None,
        ),
    ]
