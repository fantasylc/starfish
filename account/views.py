# coding:utf-8
from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse
import json


def user_login(request):
    if request.method == 'POST':
        try:
            email = request.POST.get('email', '')
            password = request.POST.get('password', '')
            user = authenticate(email=email, password=password)

            if user:
                try:
                    login(request, user)
                except Exception as e:
                    return HttpResponse(json.dumps({'status': 'fail', 'message': '登录失败'}))
                else:
                    return HttpResponse(json.dumps({'status': 'success', 'message': '登录成功'}))
            else:
                info = {'status': 'fail', 'message': '邮箱或密码错误'}
                return HttpResponse(json.dumps(info))
        except Exception as e:
            return HttpResponse(json.dumps({'status': 'fail', 'message': '登录异常,请再试一次!'}))


def user_logout(request):
    try:
        logout(request)
    except Exception as e:
        return HttpResponse(json.dumps({'status': 'fail', 'message': '注销异常'}))
    else:
        return HttpResponse(json.dumps({'status': 'fail', 'message': '注销成功'}))
