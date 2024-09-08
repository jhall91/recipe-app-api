from django.core.management.base import BaseCommand
from spec_review.models import Component

class Command(BaseCommand):
    help = 'Populate the Components table with predefined data'

    def handle(self, *args, **kwargs):
        components_data = [
            {'name': 'baseframe', 'part_number': 'BF-001'},
            {'name': 'pumps', 'part_number': 'P-002'},
            {'name': 'cooler', 'part_number': 'C-003'},
            {'name': 'filter', 'part_number': 'F-004'},
            {'name': 'oil tank', 'part_number': 'OT-005'}
        ]

        for component_data in components_data:
            component, created = Component.objects.update_or_create(
                name=component_data['name'],
                defaults={'part_number': component_data['part_number']}
            )
            if created:
                self.stdout.write(self.style.SUCCESS(f'Created component: {component_data["name"]} with part number {component_data["part_number"]}'))
            else:
                self.stdout.write(self.style.SUCCESS(f'Updated component: {component_data["name"]} with part number {component_data["part_number"]}'))
