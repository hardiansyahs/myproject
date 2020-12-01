from rest_framework import viewsets
from . import models
from . import serializers


class EmployeeViewset(viewsets.ModelViewSet):
    queryset = models.Employee.objects.all()
    serializer_class = serializers.EmployeeSerializer


class CustomertargettingViewset(viewsets.ModelViewSet):
    queryset = models.Customertargetting.objects.all()
    serializer_class = serializers.Customertargetting
