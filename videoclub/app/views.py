from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.contrib.auth import authenticate

def index(request):
    #template = loader.get_template("app/login.html")
    context = {}
    return render(request, "app/login.html", context)

def login(request):
    if request.method == 'POST':
        name = request.POST['username']
        pwd = request.POST['password']
        user = authenticate(username=name, password=pwd)
        if user is not None:
            template = loader.get_template("app/main.html")
            context = {
                'isAdmin': 1,
            }

            return HttpResponse(template.render(context, request))

        else:
            return HttpResponse("NO")
    else:
        return HttpResponse("done")

