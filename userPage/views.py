from django.shortcuts import render

# Create your views here.
# Create your views here.
def user_view(request):
    return render(request, "userPage.html", {})

