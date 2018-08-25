# -*- coding: utf-8 -*-

from common.mymako import render_mako_context
from django.http import HttpResponse
import json
import mysql
from datetime import date, datetime

class MyEncoder(json.JSONEncoder):
  def default(self, obj):
      if isinstance(obj, datetime):
          return obj.strftime('%Y-%m-%d %H:%M:%S')
      elif isinstance(obj, date):
          return obj.strftime('%Y-%m-%d')
      else:
          return json.JSONEncoder.default(self, obj)

# mysql操作方法demo

def demo01(request):
    db = mysql.Mysql()
    sql = "show databases sdf;"
    params = {}
    params['sql'] = sql
    res = db.exec_query(params)
    jsonStr = json.dumps(res, cls=MyEncoder)
    return HttpResponse(jsonStr)

def demo03(request):
    # 初始化db --- 目前还不能指定不同的mysql，需要改进
    db = mysql.Mysql()
    # 写你的sql语句
    sql = "select * from account_bkuser"
    # 定义参数
    params = {}
    params['sql'] = sql
    params['limit'] = '-1'
    # 使用db的get_all()，获取所有的结果
    res = db.query_n(params)
    # 将获取的结果转换成json格式，通过http返回
    jsonStr = json.dumps(res, cls=MyEncoder)
    return HttpResponse(jsonStr)

def demo02(request):
    # 初始化db --- 目前还不能指定不同的mysql，需要改进
    db = mysql.Mysql()
    # 写你的sql语句
    #sql = "select * from account_bkuser"
    # 定义参数
    params = {}
    params['sql'] = ''
    # 使用db的get_all()，获取所有的结果
    res = db.query_all(params)
    # 将获取的结果转换成json格式，通过http返回
    jsonStr = json.dumps(res, cls=MyEncoder)
    return HttpResponse(jsonStr)



# 页面路由 #


def index(request):
    """
    dashboard
    """
    return render_mako_context(request, '/html/index.html')

def page_2(request):
    """
    page_2
    """
    return render_mako_context(request, '/html/page_2.html')
def page_3(request):
    """
    page_3
    """
    return render_mako_context(request, '/html/page_3.html')
