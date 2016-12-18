# coding:utf-8

from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index),
    url(r'^learning/$', views.learning),
    url(r'^remember/(?P<word_id>[\d]+)/$', views.add_remember_record),
    url(r'^addnote/$', views.add_note)
]

