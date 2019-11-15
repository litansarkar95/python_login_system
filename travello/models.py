from django.db import models

# Create your models here.

class Destination(models.Model):
    
    title =models.CharField(max_length=100)
    slug =models.SlugField()
    desc =models.TextField()
    price =models.IntegerField()
    img =models.ImageField(default="default.png",upload_to="dest")
    offer =models.BooleanField(default=False)

    def desc_sort(self):
        return self.desc[:50]

 

