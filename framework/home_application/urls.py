# -*- coding: utf-8 -*-

from django.conf.urls import patterns

urlpatterns = patterns('home_application.views',
    (r'^demo/index/$', 'index'),
    (r'^demo/page_2/$', 'page_2'),
    (r'^demo/page_3/$', 'page_3'),
    (r'^demo/get_all/$', 'demo01'),
)
