# coding:utf-8
from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required

from .models import User
from .utils import code2response, get_class_list
from .const import Status, LEVEL_TRAN, Level
import logging
import re
logger = logging.getLogger(__name__)

RE_EMAIL = re.compile(r'^[0-9a-zA-Z\_\.]+@([0-9a-zA-Z\_\-])+(.[a-zA-Z0-9\-\_])+')


def user_login(request):
    """登录"""
    if request.method == 'POST':
        email = request.POST.get('email', '')
        password = request.POST.get('password', '')

        try:
            user = authenticate(email=email, password=password)
        except Exception as e:
            logger.warning("user: {} authenticate error! exc:{}".format(email, repr(e)))
            return HttpResponse(code2response(Status.LOGIN_FAIL))

        if user:
            try:
                login(request, user)
            except Exception as e:
                logger.warning("user: {} login error! exc: {}".format(email, repr(e)))
                return HttpResponse(code2response(Status.LOGIN_FAIL))
            else:
                return HttpResponse(code2response(Status.LOGIN_SUC))
        else:
            return HttpResponse(code2response(Status.EMAIL_OR_PASS_ERR))


def user_logout(request):
    """注销"""
    try:
        logout(request)
    except Exception as e:
        logger.warning("user: {} logout error, exc:{}".format(request.user.email, repr(exc)))
        return HttpResponse(code2response(Status.LOGOUT_FAIL))
    else:
        return HttpResponse(code2response(Status.LOGOUT_SUC))


def register(request):
    """注册"""
    if request.method == 'POST':
        email = request.POST.get('email', '')
        password_1 = request.POST.get('password_1', '')
        password_2 = request.POST.get('password_2', '')
        if password_1 != password_2:
            return HttpResponse(code2response(Status.PASSWORD_NOT_SAME))

        if not RE_EMAIL.match(email):
            return HttpResponse(code2response(Status.EMAIL_NOT_NORM))
        user = User.objects.filter(email=email).first()
        if user:
            return HttpResponse(code2response(Status.USER_IS_EXIST))
        user = User.objects.create_user(email, password=password_2)
        return HttpResponse(code2response(Status.REGISTER_SUC))


@login_required
def info(request):
    """我的信息"""
    levels = LEVEL_TRAN
    return render(request, 'account/mine.html', locals())


@login_required
def set_info(request):
    if request.method == 'POST':
        level = int(request.POST.get("level"))
        word_num_day = int(request.POST.get("word_num_day"))
        if (not isinstance(word_num_day, int)) or (word_num_day <= 0):
            return HttpResponse(code2response(Status.SET_INFO_ERR))
        if not level in get_class_list(Level):
            return HttpResponse(code2response(Status.SET_INFO_ERR))
        user = request.user
        user.level = level
        user.word_num_day = word_num_day
        user.save()
        return HttpResponse(code2response(Status.SET_INFO_SUC))
    levels = LEVEL_TRAN
    return render(request, 'account/set_info.html', locals())






