import pandas as pd
from django.shortcuts import render

def spec_review(request):
    # Path to your Excel file
    excel_file = '/app/TM470_Spec_Review.xlsm'

    # Read the specific sheet
    df = pd.read_excel(excel_file, sheet_name='Component Requirements')

    # Convert the DataFrame to HTML
    html_table = df.to_html(index=False)

    return render(request, 'spec_review/spec_review.html', {'table': html_table})
