# coding:utf-8

from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
)

from redis_helper import user_client
import pickle
import redis
import logging

logger = logging.getLogger(__name__)

USER_PRIFIX = "user_"


class UserManager(BaseUserManager):
    def create_user(self, email, password=None, **kwargs):
        if not email or not password:
            raise ValueError('邮箱或密码不能为空')
        user = self.model(email=self.normalize_email(email))
        user.set_password(password)
        user.nickname = email.split("@", 1)[0]
        user.save(using=self._db)
        user_client.set(self.gen_key(user.id),pickle.dumps(user, protocol=pickle.HIGHEST_PROTOCOL))
        return user

    def create_superuser(self, email, password, **kwargs):
        user = self.create_user(email, password=password)
        user.is_admin = True
        user.is_active = True
        user.save(using=self._db)
        return user

    def gen_key(self, user_id):
        return USER_PRIFIX + str(user_id)

    def get_from_cache(self, user_id):
        """从缓存取数据"""

        key = self.gen_key(user_id)
        try:
            word = user_client.get(key)
            if word:
                return pickle.loads(word)
        except redis.ConnectionError as e:
            logger.error(e)
        except TypeError as e:
            logger.error(e)

        # 如果缓存没有，从数据库拿
        word = self.get(pk=user_id)
        if word:
            user_client.set(key, pickle.dumps(word, protocol=pickle.HIGHEST_PROTOCOL))
        return word


class User(AbstractBaseUser):
    """用户表模型"""

    email = models.EmailField(verbose_name='email', max_length=255, unique=True)
    nickname = models.CharField(max_length=30, default='改个昵称吧', verbose_name='昵称')
    avatar = models.ImageField(upload_to='avatars', verbose_name='头像')
    motto = models.CharField(max_length=100, default='', verbose_name='个性签名', null=True)
    is_member = models.BooleanField(default=False, verbose_name='是否会员')
    is_admin = models.BooleanField(default=False, verbose_name='是否是管理员')

    level = models.IntegerField(default=0, verbose_name="背诵单词水平 1:四级 2:六级 3:托福 4:雅思")
    word_num_day = models.IntegerField(default=40, verbose_name="每天背诵量")

    add_time = models.DateTimeField(auto_now_add=True, verbose_name='注册时间')

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = UserManager()

    class Meta:
        verbose_name_plural = verbose_name = '用户'
        ordering = ['-add_time']

    def get_full_name(self):
        # The user is identified by their email address
        return self.email

    def get_short_name(self):
        # The user is identified by their email address
        return self.email

    def has_perm(self, perm, obj=None):
        """Does the user have a specific permission?"""
        return True

    def has_module_perms(self, app_label):
        """Does the user have permissions to view the app `app_label`?"""
        return True

    @property
    def is_staff(self):
        """if is admin"""
        return self.is_admin

    def __str__(self):
        return self.email
