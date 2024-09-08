from django.urls import path
from . import views
from .views import component_requirements

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.spec_review, name='spec_review'),
    path('components/<int:pk>/requirements/', views.component_requirements, name='component_requirements'),
    path('specification/<int:pk>/', views.specification_detail, name='specification_detail'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
