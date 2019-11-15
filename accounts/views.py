from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User,auth

# Create your views here.
#login
def login(request):
    if request.method=="POST":
        username=request.POST['username']
        password=request.POST['password']
        user=auth.authenticate(username=username,password=password)
        if user is  not None:
            auth.login(request,user)
            return redirect("/")
        else:
            messages.info(request,"user or password error")
            return redirect("accounts:login")
              
    else:
        return render(request,"login.html")
    


#registion start
def register(request):

    if request.method=="POST":
        first_name=request.POST['first_name']
        last_name=request.POST['last_name']
        email=request.POST['email']
        username=request.POST['username']
        password1=request.POST['password1']
        password2=request.POST['password2']

        if password1==password2:
            if User.objects.filter(username=username).exists():
                messages.info(request,"username already exits")
                return redirect("accounts:register")
            else:
                user=User.objects.create_user(first_name=first_name,last_name=last_name,email=email,username=username,password=password1)
                user.save()
                messages.info(request,"save data")
                return redirect("/")
            
        else:
            messages.info(request,"password not matching")
            return redirect("accounts:register")
        

        

    else:
        return render(request,"register.html")
#logout

def logout(request):
    auth.logout(request)
    return redirect("/")



    