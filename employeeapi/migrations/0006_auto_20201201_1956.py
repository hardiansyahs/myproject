# Generated by Django 3.1.3 on 2020-12-01 12:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('employeeapi', '0005_customertargetting'),
    ]

    operations = [
        migrations.RenameField(
            model_name='customertargetting',
            old_name='distancedrive',
            new_name='driving_distance',
        ),
        migrations.RenameField(
            model_name='customertargetting',
            old_name='distancewalks',
            new_name='walking_distance',
        ),
    ]
