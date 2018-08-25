# -*- coding: utf-8 -*-

from django.db import connection


# api接口类 返回数组 #
# Mysql 操作 #
class Mysql:
    # exec 执行sql#
    def exec_query(self,params):
        # 返回结果data
        data = {}
        cursor = connection.cursor()
        if params.has_key('sql'):
            sql = params['sql']
            if sql == '':
                data['code'] = 500
                data['res'] = 'query is empty..'
            else:
                try:
                    # 执行sql语句
                    cursor.execute(sql)
                    # 提交到数据库执行
                    connection.commit()
                    data['code'] = 200
                    data['res'] = 'execute done..'
                except Exception,e:
                    # Rollback in case there is any error
                    connection.rollback()
                    data['code'] = 500
                    data['res'] = format(e)
                finally:
                    # 最终关闭数据库连接
                    connection.close()
        else:
            data['code'] = 500
            data['res'] = 'params.sql is None..'
        return data

    # select all #
    def query_all(self,params):
        # 返回结果data
        data = {}
        cursor = connection.cursor()
        if params.has_key('sql'):
            sql = params['sql']
            if sql == '':
                data['code'] = 500
                data['res'] = 'query is empty..'
            else:
                try:
                    # 执行sql语句
                    cursor.execute(sql)
                    index = cursor.description
                    result = []
                    for res in cursor.fetchall():
                        row = {}
                        for i in range(len(index) - 1):
                            row[index[i][0]] = res[i]
                        result.append(row)

                    data['code'] = 200
                    data['res'] = result
                except Exception,e:
                    # Rollback in case there is any error
                    connection.rollback()
                    data['code'] = 500
                    data['res'] = format(e)
                finally:
                    # 最终关闭数据库连接
                    connection.close()
        else:
            data['code'] = 500
            data['res'] = 'params.sql is None..'
        return data

    # select one #
    def query_one(self,params):
        # 返回结果data
        data = {}
        cursor = connection.cursor()
        if params.has_key('sql'):
            sql = params['sql']
            if sql == '':
                data['code'] = 500
                data['res'] = 'query is empty..'
            else:
                try:
                    # 执行sql语句
                    cursor.execute(sql)
                    index = cursor.description
                    result = []
                    for res in cursor.fetchone():
                        row = {}
                        for i in range(len(index) - 1):
                            row[index[i][0]] = res[i]
                        result.append(row)

                    data['code'] = 200
                    data['res'] = result
                except Exception,e:
                    # Rollback in case there is any error
                    connection.rollback()
                    data['code'] = 500
                    data['res'] = format(e)
                finally:
                    # 最终关闭数据库连接
                    connection.close()
        else:
            data['code'] = 500
            data['res'] = 'params.sql is None..'
        return data

    # select N #
    def query_n(self, params):
        # 返回结果data
        # limit 必须大于0且为整数
        data = {}
        cursor = connection.cursor()
        if params.has_key('sql') and params.has_key('limit'):
            sql = params['sql']
            limit = params['limit']
            if sql == '':
                data['code'] = 500
                data['res'] = 'query is empty..'
            elif int(limit) > 0 and limit.isdigit():
                try:
                    # 执行sql语句
                    cursor.execute(sql)
                    index = cursor.description
                    result = []
                    for res in cursor.fetchmany(int(limit)):
                        row = {}
                        for i in range(len(index) - 1):
                            row[index[i][0]] = res[i]
                        result.append(row)

                    data['code'] = 200
                    data['res'] = result
                except Exception,e:
                    # Rollback in case there is any error
                    connection.rollback()
                    data['code'] = 500
                    data['res'] = format(e)
                finally:
                    # 最终关闭数据库连接
                    connection.close()
            else:
                data['code'] = 500
                data['res'] = 'limit is Wrong..'
        else:
            data['code'] = 500
            data['res'] = 'params.sql or params.limit is None..'
        return data
