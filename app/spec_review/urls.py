from django.urls import path
from . import views

urlpatterns = [
    path('', views.spec_review, name='spec_review'),
]
