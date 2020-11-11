from django.db import models

# Create your models here.


class Employee(models.Model):
    nik = models.CharField(max_length=15)
    password = models.CharField(max_length=15)

#Create / Insert / Add - POST
#Retrieve / Fetch - GET
#Update / Edit - PUT
#Delete / Remove - DELETE
