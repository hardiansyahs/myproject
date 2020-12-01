# api <-> mobile app/ web app/ etc. json

from rest_framework import serializers
from .models import *


class EmployeeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Employee
        fields = '__all__'


class CustomertargettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customertargetting
        fields = '__all__'
