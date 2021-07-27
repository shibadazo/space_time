from os import name
from django.db import models
from django.db.models.base import Model
from django.urls import reverse
from django import forms

class Category(models.Model):
    name = models.CharField(max_length=255)
    author = models.ForeignKey(
        'auth.User',
        on_delete=models.CASCADE,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

class Shop(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    author = models.ForeignKey(
        'auth.User',
        on_delete=models.CASCADE,
    )
    # CategoryモデルとSHopモデルを関連づけている
    # 自動的にcategory_idを作ってくれる
    category = models.ForeignKey(
        Category,
        on_delete=models.PROTECT,
    )
    # assesment = forms.fields.ChoiceField(
    #     choices = (
    #         ('XXXX', '0'),
    #         ('XXXX', '1'),
    #         ('XXXX', '2'),
    #         ('XXXX', '3'),
    #         ('XXXX', '4'),
    #         ('XXXX', '5'),
    #         ('XXXX', '6'),
    #         ('XXXX', '7'),
    #         ('XXXX', '8'),
    #         ('XXXX', '9'),
    #         ('XXXX', '10')
    #     ),
    #     label='評価',
    #     required=True,
    #     widget=forms.widgets.RadioSelect
    # )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('lunchmap:detail', kwargs={'pk': self.pk})