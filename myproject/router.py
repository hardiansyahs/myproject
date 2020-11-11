from employeeapi.viewsets import EmployeeViewset
from rest_framework import routers

router = routers.DefaultRouter()
router.register('employee', EmployeeViewset)

# localhost:p/api/employee/3
# GET, POST, UPDATE, DELETE
# list, retrieve
