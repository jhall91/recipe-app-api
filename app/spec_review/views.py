import pandas as pd
from django.shortcuts import render, get_object_or_404
from .models import Component, Specification

def spec_review(request):
    excel_file = '/app/TM470_Spec_Review.xlsm'

    df = pd.read_excel(excel_file, sheet_name='Component Requirements')

    html_table = df.to_html(index=False)

    return render(request, 'spec_review/spec_review.html', {'table': html_table})


def component_requirements(request, pk):
    component = get_object_or_404(Component, pk=pk)
    requirements = component.requirements.all()
    return render(request, 'spec_review/component_requirements.html', {
        'component': component,
        'requirements': requirements
    })


def specification_detail(request, pk):
    specification = get_object_or_404(Specification, pk=pk)
    return render(request, 'specification_detail.html', {'specification': specification})
