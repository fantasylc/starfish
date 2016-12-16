# coding: utf-8


class WordLevel:
    BASE = 0   #基础词汇
    CET_4 = 1  # 四级
    CET_6 = 2  # 六级
    TOEFT = 3  # 托福
    IELTS = 4  # 雅思


class ReciteStatus:
    NOT_RECITE = 0   #没背
    RECITEING = 1    #正在背
    RECITED = 2      #背完

STATUS_TRAN = {
    0: "未背",
    1: "正在背",
    2: "背完"
}

