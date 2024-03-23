from django.urls import path
from . import views

urlpatterns = [
    path('details/', views.employee_details, name='employee_details'),
    path('names/', views.employee_names, name='employee_names'),
]

