from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.contrib.auth import authenticate, login, logout


def index(request):
    #template = loader.get_template("app/login.html")
    context = {'name': 'Pepe'}
    return render(request, "app/login.html", context)

def loginView(request):
    if request.method == 'POST':
        name = request.POST['username']
        pwd = request.POST['password']
        user = None
        context = {'isAdmin': 0,}
        if request.user.is_authenticated:
            
            if name == 'admin':
                context = {'isAdmin': 1,}

            return render(request, "app/main.html",context)
        else:    
            user = authenticate(username=name, password=pwd)

        if user is not None:
            
            login(request, user)
            if name == 'admin':
                context = {'isAdmin': 1, }
           
            return render(request, "app/main.html", context)

        else:
            return HttpResponse("NO")
    else:
        return HttpResponse("done")

