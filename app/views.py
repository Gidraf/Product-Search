from django.shortcuts import render
from django.template import loader
from .models import Product
from django.db.models import Q

def index(request):
    if len(request.GET) > 0:
        query_text = request.GET.get("query")
        if query_text:
            result = Product.objects.all().filter(Q(product_name__icontains=query_text) | Q(product_description__icontains=query_text) | Q(product_price__icontains=query_text))
            return render(request,"search.html",context={"products":result})
    return render(request,"search.html")
