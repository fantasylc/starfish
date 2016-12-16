from django.contrib import admin

from .models import (Words, CetFourWords, CetSixWords,
                     ToeftWords, IeltsWords, ReciteRecord, WordNote)


class WordsAdmin(admin.ModelAdmin):
    list_display = ('id', 'word', 'meaning')


class WordBaseAdmin(admin.ModelAdmin):
    list_display = ('id', 'global_id', 'word', 'meaning')
    readonly_fields = ('global_id',)


class ReciteRecordAdmin(admin.ModelAdmin):
    list_display = ('id', 'word', 'user_email', 'status',)
    search_fields = ['user_id']


class WordNodeAdmin(admin.ModelAdmin):
    list_display = ('id', 'word_id', 'word', 'user_id',  'user_email', 'content_cut')
    search_fields = ['word_id', 'user_id']

admin.site.register(Words, WordsAdmin)
admin.site.register(CetFourWords, WordBaseAdmin)
admin.site.register(CetSixWords, WordBaseAdmin)
admin.site.register(ToeftWords, WordBaseAdmin)
admin.site.register(IeltsWords, WordBaseAdmin)
admin.site.register(ReciteRecord, ReciteRecordAdmin)
admin.site.register(WordNote, WordNodeAdmin)


