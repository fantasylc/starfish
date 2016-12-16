from django.shortcuts import render

from account.const import LEVEL_TRAN


def index(request):
    levels = LEVEL_TRAN
    return render(request, 'index.html', locals())


def learning(request):
    levels = LEVEL_TRAN
    return render(request, 'learning.html', locals())
