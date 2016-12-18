# coding: utf-8

import redis
from django.conf import settings


words_client = redis.Redis(host=settings.REDIS_HOST, port=settings.REDIS_PORT, db=0)
user_client = redis.Redis(host=settings.REDIS_HOST, port=settings.REDIS_PORT, db=1)