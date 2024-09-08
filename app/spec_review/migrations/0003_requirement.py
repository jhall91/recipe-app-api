# Generated by Django 3.2.25 on 2024-08-14 19:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('spec_review', '0002_component_part_number'),
    ]

    operations = [
        migrations.CreateModel(
            name='Requirement',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('requirement', models.CharField(max_length=255)),
                ('specification_title', models.CharField(max_length=255)),
                ('specification_code', models.CharField(max_length=100)),
                ('clause', models.CharField(max_length=100)),
                ('page_number', models.IntegerField()),
                ('deviation', models.TextField(blank=True, null=True)),
                ('components', models.ManyToManyField(to='spec_review.Component')),
            ],
            options={
                'db_table': 'requirements',
            },
        ),
    ]