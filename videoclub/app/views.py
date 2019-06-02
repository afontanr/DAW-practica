from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from app.models import Best, Casting, Movie




def index(request):
    
    if request.user.is_authenticated:
        logout(request)
    context = {}
    return render(request, "app/login.html", context)

def loginView(request):
    
    best = Best.objects.all()
    
    movie123 = [best[0].film, best[1].film, best[2].film]
    cast123 = [Casting.objects.filter(film = movie123[0])[0], Casting.objects.filter(film = movie123[1])[0], Casting.objects.filter(film = movie123[2])[0]]
    zip_cast123 = [(movie123[0], cast123[0]), (movie123[1], cast123[1]), (movie123[2], cast123[2]), ]

    movie456 = [best[3].film, best[4].film, best[5].film]
    cast456 = [Casting.objects.filter(film=movie456[0])[0], Casting.objects.filter(film=movie456[1])[0], Casting.objects.filter(film=movie456[2])[0]]
    zip_cast456 = [(movie456[0], cast456[0]), (movie456[1],cast456[1]), (movie456[2], cast456[2]), ]

    movie789 = [best[6].film, best[7].film, best[8].film]
    cast789 = [Casting.objects.filter(film=movie789[0])[0], Casting.objects.filter(film=movie789[1])[0], Casting.objects.filter(film=movie789[2])[0]]
    zip_cast789 = [(movie789[0], cast789[0]), (movie789[1],cast789[1]), (movie789[2], cast789[2]), ]
    
    if request.method == 'POST':
        name = request.POST['username']
        pwd = request.POST['password']
        user = None
        context = {'isAdmin': 0, 'zip_cast123': zip_cast123,'zip_cast456': zip_cast456, 'zip_cast789': zip_cast789}
        if request.user.is_authenticated:
            context = {}
            if name == 'admin':
                context = {
                            'isAdmin': 1,
                            'zip_cast123': zip_cast123,
                            'zip_cast456': zip_cast456,
                            'zip_cast789': zip_cast789
                        }
            

            return render(request, "app/main.html",context)
        else:    
            user = authenticate(request, username=name, password=pwd)

        if user is not None:
            
            login(request, user)
            context = {
                'isAdmin': 0,
                'zip_cast123': zip_cast123,
                'zip_cast456': zip_cast456,
                'zip_cast789': zip_cast789
            }
            if name == 'admin':
                context = {
                            'isAdmin': 1,
                            'zip_cast123': zip_cast123,
                            'zip_cast456': zip_cast456,
                            'zip_cast789': zip_cast789
                           }
           
            return render(request, "app/main.html", context)

        else:
            context = {'isError': 1,}
            return render(request, "app/login.html", context)
    else:
        isAdmin = 0
        name = request.user.username
        if name == 'admin':
            isAdmin = 1
        
        context = {
                    'isAdmin': isAdmin,
                    'zip_cast123': zip_cast123,
                    'zip_cast456': zip_cast456,
                    'zip_cast789': zip_cast789
                    }
        return render(request, "app/main.html", context)

def addMovie (request):
    return render(request, "app/addMovie.html")


@login_required
def searchMovie(request):
    name = request.user.usernme
    search = request.GET['search']
    movies = Movie.objects.filter(title__icontains = search)
    context = {}
    if name == 'isAdmin':
        context == {'isAdmin': 1,}
    
    if movies:
        context = context + {'movies': movies,}
    
    return render(request, "app/mostrarPelicula.html",context)



