from django.shortcuts import render
import requests

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
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
        if request.user.is_authenticated :
            if name == 'admin':
                isAdmin = 1
        
            context = {
                        'isAdmin': isAdmin,
                        'zip_cast123': zip_cast123,
                        'zip_cast456': zip_cast456,
                        'zip_cast789': zip_cast789
                        }
            return render(request, "app/main.html", context)
        else:
            context={}
            return render(request, "app/login.html", context)




@login_required
def searchMovie(request):
    name = request.user.username
    search = request.GET['search']
    movies = Movie.objects.filter(title__icontains = search)[:6]
    casts = []
    isAdmin = 0
    if name == 'admin':
        isAdmin = 1
    for movie in movies:
        cast = Casting.objects.filter(film = movie)
        casts = casts + [(movie, cast[0])]
    context = {}
    
    add1={}
    if casts:
        add1 = {'movies': casts, }
    add2 = {'isAdmin': isAdmin, }

    context={**add1,**add2}
    
    return render(request, "app/mostrarPelicula.html",context)


@login_required
def adminMovie(request):
    name = request.user.username
    context = {}
    if name == 'admin':
        context = {'isAdmin': 1,}
        return render(request,"app/adminMovie.html",context)
    return render(request,"app/login.html",context)


@login_required
def movieList(request):
    name = request.user.username
    context={}
    if name == 'admin':
        search = request.GET['filmName']
        movies = Movie.objects.filter(title__icontains=search)
        casts = []
        for movie in movies:
            cast = Casting.objects.filter(film=movie)
            casts = casts + [(movie, cast[0])]
        context={'isAdmin':1, 'movies':casts}
        return render(request,"app/showMovie.html",context)
    else:
        return render(request,"app/login.html",context)


@login_required
def adminUser(request):
    name = request.user.username
    context = {}
    if name == 'admin':
        context = {'isAdmin': 1, }
        return render(request, "app/adminUsers.html", context)
    return render(request, "app/login.html", context)


@login_required
def userList(request):
    name = request.user.username
    context = {}
    if name == 'admin':
        search = request.GET['username']
        users = User.objects.filter(username__icontains=search)

        context = {'isAdmin': 1, 'users': users}
        return render(request, "app/showUsers.html", context)
    else:
        return render(request, "app/login.html", context)


@login_required
def addUser(request):
    name = request.user.username
    context = {}
    if request.method == "POST":
        usernm = request.POST['username']
        email = request.POST['email']
        pwd = request.POST['passwd']
        rePwd = request.POST['rPasswd']
        userCheck = User.objects.filter(username=usernm)
        if name == 'admin' and pwd == rePwd and not userCheck:
            user = User.objects.create_user(usernm, email)
            user.set_password(pwd)
            user.save()
            context = {'isAdmin': 1}
            return render(request, "app/addUser.html", context)
        context={}
        context = {'isError' : 1}
        return render(request,"app/addUser.html",context)
    else:
        if name == 'admin':
            context = {'isAdmin':1}
            return render(request,"app/addUser.html",context)
        return render(request, "app/login.html", context)


def addMovie(request):
    context = {}
    name = request.user.username
    baseMovie = "https://api.themoviedb.org/3/search/movie?api_key=43ec2cc431400ac5b0df3eb26323fd4d&language=en-US&query="
    baseCast = "https://api.themoviedb.org/3/movie/%d/credits?api_key=43ec2cc431400ac5b0df3eb26323fd4d"
    if request.method == "POST":
        title = request.POST['moviename']
        urlMovie = request.POST['movieurl']
        director = request.POST['director']
        actor1 = request.POST['actor1']
        actor2 = request.POST['actor2']
        actor4 = request.POST['actor3']
        actor5 = request.POST['actor4']
        urlPoster = request.POST['poster']
        rate = request.POST['rate']
        response = requests.get(baseMovie+title)
        api = response.json()
        result = api['results']
        movie = result[0]
        film = Movie.objects.filter(title = movie['title'])
        title = movie['title']
        if film:
            context ={'isAdmin': 1, 'isError': 1}
            return render(request, "app/addMovie.html", context)
        idMovie = movie['id']
        cast_response = requests.get(baseCast % idMovie)
        apiCast = cast_response.json()
        cast = apiCast['cast']
        crew = apiCast['crew']
        if not director:
            director = crew[0]['name']
        if not actor1:
            actor1 = cast[0]['name']
        if not actor2:
            actor2 = cast[1]['name']
        if not actor4:
            actor3 = cast[2]['name']
        if not actor5:
            actor5 = cast[3]['name']
        if not urlPoster:
            basePoster = "http://image.tmdb.org/t/p/w342/%s"
            urlPoster = basePoster % movie['poster_path']
        if not rate:
            rate = movie['vote_average']

        summary = movie['overview']
        m = Movie(title=title, url_movie = urlMovie, director = director, url_poster = urlPoster,summary = summary, rate = rate)
        m.save()
        c = Casting(film = m, actor1 = actor1, actor2 = actor2, actor4 = actor4, actor5 = actor5)
        c.save()


        context = {'isAdmin': 1}
        return render(request, "app/addMovie.html", context)

        


    if name == 'admin':
        context={'isAdmin':1}
    return render(request, "app/addMovie.html",context)

def modificarUsuario(request):
    name = request.POST['username']
    chk = User.objects.filter(username = name)
    if chk and request.POST:
        email = request.POST['email']
        newPwd = request.POST['newPwd']
        rNewPwd = request.POST['rNewPwd']
        if email:
            chk[0].email = email
        if newPwd:
            if newPwd == rNewPwd:
                chk[0].set_password(newPwd)
            else:
                context = {'isAdmin':1, 'isError':1}
                return render(request, "app/showUsers.html",context)
        chk[0].save()
        context = {'isAdmin': 1,}
        return render(request, "app/showUsers.html", context)
    else:
        context = {'isAdmin': 1, 'isError': 1}
        return render(request, "app/showUsers.html", context)





