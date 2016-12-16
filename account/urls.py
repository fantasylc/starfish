# coding: utf-8
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^login/$', views.user_login),
    url(r'^register/$', views.register),
    url(r'^logout/$', views.user_logout),
    url(r'^info/$', views.info),
    url(r'^set/$', views.set_info)
]