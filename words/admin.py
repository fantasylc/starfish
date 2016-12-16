from django.contrib import admin

from .models import (Words, CetFourWords, CetSixWords,
    ToeftWords, IeltsWords, ReciteRecord, WordNote)


admin.site.register(Words)
admin.site.register(CetFourWords)
admin.site.register(CetSixWords)
admin.site.register(ToeftWords)
admin.site.register(IeltsWords)
admin.site.register(ReciteRecord)
admin.site.register(WordNote)


