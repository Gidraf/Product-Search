from django.db import models

class Product(models.Model):
      product_name = models.CharField(max_length=1024, null=True)
      product_description = models.CharField(max_length=1024, null=True)
      product_price = models.CharField(max_length=1024, null=True)
      image_url =  models.CharField(max_length=1024, null=True)