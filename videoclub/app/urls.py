from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='login'),
    path('main', views.loginView, name='main'),
    path('addMovie', views.addMovie, name='addMovie'),
] 
