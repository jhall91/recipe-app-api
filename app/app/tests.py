"""
Sample tests
to run the test in terminal: docker compose run --rm app sh -c "python manage.py test"
"""
from django.test import SimpleTestCase

from app import calc

class CalcTests(SimpleTestCase):
    """Test the calc module."""

    def test_add_numbers(self):
        """Adding numbers together."""
        res = calc.add(5, 6)

        self.assertEqual(res, 11)

    def test_subtract_numbers(self):
        """Test subtracting numbers"""
        res = calc.subtract(10, 15)

        self.assertEquals(res, 5)