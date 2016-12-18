# coding: utf-8


#响应返回值
class Status:
    LOGIN_FAIL = 1001
    EMAIL_OR_PASS_ERR = 1002
    LOGOUT_FAIL = 1003
    PASSWORD_NOT_SAME = 1004
    USER_IS_EXIST = 1005
    EMAIL_NOT_NORM = 1006
    SET_INFO_ERR = 1007
    RECORD_EXIST = 1008
    ADD_NOTE_EXC = 1009

    LOGIN_SUC = 2001
    LOGOUT_SUC = 2002
    REGISTER_SUC = 2003
    SET_INFO_SUC = 2004
    ADD_RECORD_SUC = 2005
    ADD_NOTE_SUC = 2006

#状态翻译
STATUE_MESSAGE_MAP = {
    Status.LOGIN_FAIL: "登录失败,请稍后再试",
    Status.EMAIL_OR_PASS_ERR: "邮箱或密码错误",
    Status.LOGOUT_FAIL: "注销失败",
    Status.PASSWORD_NOT_SAME: "两次密码不一致",
    Status.USER_IS_EXIST: "用户已经存在",
    Status.EMAIL_NOT_NORM: "email不符合规范",
    Status.SET_INFO_ERR: "设置信息失败，请检查是否规范",
    Status.RECORD_EXIST: "记录已经存在",
    Status.ADD_NOTE_EXC: "提交笔记失败",

    Status.LOGIN_SUC: "登陆成功",
    Status.LOGOUT_SUC: "注销成功",
    Status.REGISTER_SUC: "恭喜注册成功, 请前往登录",
    Status.SET_INFO_SUC: "设置信息成功",
    Status.ADD_RECORD_SUC: "添加记录成功",
    Status.ADD_NOTE_SUC: "提交笔记成功",
}


# 背诵水平，范围
class Level:
    CET_4 = 1   #四级
    CET_6 = 2   #六级
    TOEFT = 3   #托福
    IELTS = 4   #雅思

LEVEL_TRAN = {
    1: "四级",
    2: "六级",
    3: "托福",
    4: "雅思"
}


# 背诵状态
class ReciteStatus:
    NOT_RECITE = 0   #没背
    RECITEING = 1    #正在背
    RECITED = 2      #背完

STATUS_TRAN = {
    0: "未背",
    1: "正在背",
    2: "背完"
}

