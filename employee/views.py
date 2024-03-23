from django.shortcuts import render
from .models import Employee

def employee_details(request):
    employees = Employee.objects.all()
    return render(request, 'employee/employee_details.html', {'employees': employees})

def employee_names(request):
    employees = Employee.objects.all()
    return render(request, 'employee/employee_names.html', {'employees': employees})
