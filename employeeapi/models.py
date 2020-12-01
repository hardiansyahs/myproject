from django.db import models

# Create your models here.


class Employee(models.Model):
    nik = models.CharField(max_length=15)
    password = models.CharField(max_length=15)


class Customertargetting(models.Model):
    customer_name = models.CharField(max_length=255)
    customer_address = models.CharField(max_length=255)
    customer_type = models.CharField(max_length=50)
    keyword = models.CharField(max_length=100)
    radius = models.CharField(max_length=20)
    place_id = models.CharField(max_length=50)
    latitude_origin = models.FloatField()
    longitude_origin = models.FloatField()
    latitude_destination = models.FloatField()
    longitude_destination = models.FloatField()
    phone_number = models.CharField(max_length=20)
    driving_distance = models.CharField(max_length=50)
    walking_distance = models.CharField(max_length=50)
