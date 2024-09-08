from django.core.management.base import BaseCommand
from spec_review.models import Component

class Command(BaseCommand):
    help = 'List all components with their names and part numbers'

    def handle(self, *args, **kwargs):
        components = Component.objects.all()

        if components.exists():
            self.stdout.write(self.style.SUCCESS('Listing all components:'))
            for component in components:
                self.stdout.write(f'ID: {component.id}, Name: {component.name}, Part Number: {component.part_number}')
        else:
            self.stdout.write(self.style.WARNING('No components found.'))
