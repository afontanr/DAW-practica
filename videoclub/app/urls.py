from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='login'),
    path('main', views.loginView, name='main'),
    path('addMovie', views.addMovie, name='addMovie'),
    path('search', views.searchMovie, name='search'),
    path('adminMovie', views.adminMovie, name='adminMovie'),
    path('adminUser', views.adminUser, name='adminUser'),
    path('movieList', views.movieList, name='movieList'),
    path('userList', views.userList, name='userList'),
    path('addUser', views.addUser, name='addUser'),
    path('modificarUsuario', views.modificarUsuario, name='modificarUsuario'),
    path('modificarPelicula', views.modificarMovie, name='modificarPelicula'),
    path('eliminarUsuario', views.eliminarUsuario, name='eliminarUsuario'),
    path('eliminarPelicula', views.eliminarPelicula, name='eliminarPelicula'),
] 
