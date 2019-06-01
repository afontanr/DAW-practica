from django.contrib import admin

# Register your models here.
from app.models import *

admin.site.Register(Movie)
admin.site.Register(Cast)
admin.site.Register(Top)
