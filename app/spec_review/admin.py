from django.contrib import admin
from django.utils.html import format_html
from .models import Component, Requirement, Specification

class RequirementInline(admin.TabularInline):
    model = Requirement.components.through
    extra = 1

@admin.register(Component)
class ComponentAdmin(admin.ModelAdmin):
    list_display = ('name', 'part_number', 'id', 'view_requirements_link')
    inlines = [RequirementInline]
    search_fields = ('name', 'part_number')

    def view_requirements_link(self, obj):
        url = f'/spec_review/components/{obj.id}/requirements'
        return format_html(f'<a href="{url}" target="_blank">View Requirements</a>')

    view_requirements_link.short_description = 'Requirements'

@admin.register(Requirement)
class RequirementAdmin(admin.ModelAdmin):
    list_display = ('requirement', 'specification', 'clause', 'page_number', 'deviation')
    search_fields = ('requirement',)
    list_filter = ('specification', 'components')

@admin.register(Specification)
class SpecificationAdmin(admin.ModelAdmin):
    list_display = ('spec_number', 'spec_title', 'spec_authority', 'revision', 'pdf')
    search_fields = ('spec_number', 'spec_title')
    list_filter = ('spec_authority', 'revision')
