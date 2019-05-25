from django.db import models

# Create your models here.
class Movie(models.Model):
    title = models.CharField(max_length = 100)
    url_movie = models.CharField(max_length=200)
    director = models.CharField(max_length=40)
    reparto = models.CharField(max_length=40)
