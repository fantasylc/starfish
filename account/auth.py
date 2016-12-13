# coding:utf-8

from .models import User


class MyBackend(object):
    """自定义用户验证，使用邮箱登录"""
    def authenticate(self, email=None, password=None):
        if not email or not password:
            return None
        try:
            user = User.objects.get(email=email)
            if user:
                if user.check_password(password):
                    return user
                else:
                    return None
        except User.DoesNotExist:
            return None

    def get_user(self, user_id):
        try:
            user = User.objects.get(pk=user_id)
            if user:
                return user
            return None
        except User.DoesNotExist:
            return None