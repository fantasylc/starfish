# coding: utf-8

from consts import STATUE_MESSAGE_MAP, Level
from words.models import CetFourWords, CetSixWords, IeltsWords,ToeftWords
import json
import pickle

def code2response(code):
    """将code转换为HttpResponse返回的json字符串对象
    """
    if code > 2000:
        status = 'success'
    else:
        status = 'fail'
    message = STATUE_MESSAGE_MAP.get(code)
    return json.dumps({'status': status, 'message': message})


def get_class_list(cls):
    """获取python类成员变量值列表
    """
    members = [val for key, val in cls.__dict__.items() if not key.startswith('_')]
    return members


def level2model(level):
    """根据设置的背诵水平返回表"""
    if level == Level.CET_4:
        return CetFourWords
    if level == Level.CET_6:
        return CetSixWords
    if level == Level.IELTS:
        return IeltsWords
    if level == Level.TOEFT:
        return ToeftWords
