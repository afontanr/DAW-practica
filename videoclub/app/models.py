from django.db import models

# Create your models here.
class Movie(models.Model):
    title = models.CharField(max_length = 100)
    url_movie = models.CharField(max_length=200)
    director = models.CharField(max_length=50)
    url_poster = models.CharField(max_length=200)
    rate = models.IntegerField()
    
class Cast(models.Model):
    film = models.ForeignKey(Movie, on_delete=models.CASCADE)
    actor1 = models.CharField(max_length=50)
    actor2 = models.CharField(max_length=50)
    actor2 = models.CharField(max_length=50)
    actor4 = models.CharField(max_length=50)
    actor5 = models.CharField(max_length=50)


class Top(models.Model):
    film = models.ForeignKey(Movie, on_delete=models.CASCADE)
