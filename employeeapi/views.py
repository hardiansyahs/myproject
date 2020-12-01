from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse

from rest_framework.decorators import api_view
from rest_framework.response import Response

from django.contrib.auth import authenticate, login, logout

from django.contrib import messages

# Create your views here.
from .models import *


@api_view(['POST'])
def loginPage(request):
    if request.user.is_authenticated:
        isValid = {'isValid': True}
        return JsonResponse(isValid)
    else:
        if request.method == 'POST':
            nik = request.POST.get('nik')
            password = request.POST.get('password')

            user = authenticate(request, username=nik, password=password)

            if user is not None:
                login(request, user)
                return JsonResponse(isValid)
            else:
                isValid = {'isValid': False}
                return JsonResponse(isValid)


def logoutUser(request):
    logout(request)
    return redirect('login')
