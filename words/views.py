from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required

from consts import LEVEL_TRAN, ReciteStatus, Status
from utils import code2response, level2model

from .models import  ReciteRecord, WordNote

import logging

logger = logging.getLogger(__name__)


def index(request):
    levels = LEVEL_TRAN
    return render(request, 'index.html', locals())


@login_required
def learning(request):
    levels = LEVEL_TRAN
    cls = level2model(request.user.level)
    last_record = ReciteRecord.objects.filter(user_id=request.user.id).first()
    if last_record:
        last_index = last_record.word_id
    else:
        last_index = 0
    if cls:
        words = cls.objects.all()[last_index:last_index+request.user.word_num_day]
    return render(request, 'learning.html', locals())


@login_required
def add_remember_record(request, word_id):
    """添加背诵记录"""
    record = ReciteRecord.objects.filter(word_id=word_id).filter(
        level=request.user.level).first()
    if record:
        return HttpResponse(code2response(Status.RECORD_EXIST))
    print('lala')
    record = ReciteRecord(word_id=word_id,
                          level=request.user.level,
                          user_id=request.user.id,
                          status=ReciteStatus.RECITED)
    record.save()
    return HttpResponse(code2response(Status.ADD_RECORD_SUC))


@login_required
def add_note(request):
    """添加笔记"""
    if request.method == 'POST':
        word_id = int(request.POST.get("word_id"))
        content = request.POST.get("note", "")
        content.replace("<", "\<").replace(">", "\>").replace('-', '\-').replace("'", "")
        is_share = int(request.POST.get("is_share"))
        is_share = True if is_share else False
        cls = level2model(request.user.level)
        try:
            word = cls.objects.get(id=word_id)
        except Exception as e:
            logging.warning("user:{} add note word:{} not exist".format(request.user.email, word_id))
            word = None
        if word:
            word_note = WordNote.objects.create(word_id=word.global_id,
                                                user_id=request.user.id,
                                                content=content,
                                                is_share=is_share)
            if word_note:
                return HttpResponse(code2response(Status.ADD_NOTE_SUC))
    return HttpResponse(code2response(Status.ADD_NOTE_EXC))




