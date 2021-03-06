#!/usr/bin/env python
# coding=utf-8
# 更多资料就在：www.linuxyw.com
import MySQLdb
import logging

# 定义错误日志路径
error_log = '/'.join((pro_path, 'log/task_error.log'))

# 定义日志输出格式
logging.basicConfig(level=logging.ERROR,
                    format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%Y-%m-%d %H:%M:%S',
                    filename=error_log,
                    filemode='a')

# 定义数据库参数
db_name = 'task'
db_user = 'root'
db_pass = '111111'
db_ip = 'localhost'
db_port = 3306


def writeDb(sql, db_data=()):
    """
    连接mysql数据库（写），并进行写的操作
    """
    try:
        conn = MySQLdb.connect(db=db_name, user=db_user, passwd=db_pass, host=db_ip, port=int(db_port))
        cursor = conn.cursor()
    except Exception, e:
        print e
        logging.error('数据库连接失败:%s' % e)
        return False

    try:
        cursor.execute(sql, db_data)
        conn.commit()
    except Exception, e:
        conn.rollback()
        logging.error('数据写入失败:%s' % e)
        return False
    finally:
        cursor.close()
        conn.close()
    return True


def readDb(sql, db_data=()):
    """
    连接mysql数据库（从），并进行数据查询
    """
    try:
        conn = MySQLdb.connect(db=db_name, user=db_user, passwd=db_pass, host=db_ip, port=int(db_port))
        cursor = conn.cursor()
    except Exception, e:
        print e
        logging.error('数据库连接失败:%s' % e)
        return False

    try:
        cursor.execute(sql, db_data)
        data = [dict((cursor.description[i][0], value) for i, value in enumerate(row)) for row in cursor.fetchall()]
    except Exception, e:
        logging.error('数据执行失败:%s' % e)
        return False
    finally:
        cursor.close()
        conn.close()
    return data


@route('/api/getuser', method="POST")
def getuser():
    sql = "select * from user;"
    userlist = readDb(sql, )
    return json.dumps(userlist)


@route('/adduser', method="POST")
def adduser():
    name = request.forms.get("name")
    age = request.forms.get("age")
    sex = request.forms.get("sex")
    qq = request.forms.get("qq")
    email = request.forms.get("email")
    departmentid = request.forms.get("department")

    if not name or not age or not sex or not qq or not email or not departmentid:
        return '-2'

    sql = """
            INSERT INTO 
                user(name,age,sex,qq,email,departmentid) 
            VALUES(%s,%s,%s,%s,%s,%s)
        """

    data = (name, age, sex, qq, email, departmentid)
    result = writeDb(sql, data)
    if result:
        return '0'
    else:
        return '-1'
