# coding:utf-8


class Status:
    LOGIN_FAIL = 1001
    EMAIL_OR_PASS_ERR = 1002
    LOGOUT_FAIL = 1003
    PASSWORD_NOT_SAME = 1004
    USER_IS_EXIST = 1005
    EMAIL_NOT_NORM = 1006
    SET_INFO_ERR = 1007

    LOGIN_SUC = 2001
    LOGOUT_SUC = 2002
    REGISTER_SUC = 2003
    SET_INFO_SUC = 2004


STATUE_MESSAGE_MAP = {
    Status.LOGIN_FAIL: "登录失败,请稍后再试",
    Status.EMAIL_OR_PASS_ERR: "邮箱或密码错误",
    Status.LOGOUT_FAIL: "注销失败",
    Status.PASSWORD_NOT_SAME: "两次密码不一致",
    Status.USER_IS_EXIST: "用户已经存在",
    Status.EMAIL_NOT_NORM: "email不符合规范",
    Status.SET_INFO_ERR: "设置信息失败，请检查是否规范",

    Status.LOGIN_SUC: "登陆成功",
    Status.LOGOUT_SUC: "注销成功",
    Status.REGISTER_SUC: "恭喜注册成功, 请前往登录",
    Status.SET_INFO_SUC: "设置信息成功"
}


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