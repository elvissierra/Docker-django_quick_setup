from django.shortcuts import render

#simple home page to view
def main(request):
    return render(request, "index.html")
