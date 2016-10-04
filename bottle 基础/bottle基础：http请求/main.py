#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com

#这里需要额外导入 request 方法
from bottle import route, run ,request


@route('/login')
def login():
	'''
	登陆页面，html代码都是直接从这里返回到网页中去的，如果不带任何方法，此函数将响应
	关于模板的使用，后面课程会讲到
	'''
	return '''
        <html>
        <head>
        </head>
        <body>
        <form action="/login" method="post">
            Username: <input name="username" type="text" />
            Password: <input name="password" type="password" />
            <input value="Login" type="submit" />
        </form>
        </body>
        </html>
    '''

@route('/login', method='POST')
def do_login():
	
	'''
	函数名字随意定，这里是进行POST动作的，所以用了do_login，函数名不能与前后函数有同名
	登陆动作，这里用了post，也就是当访问login页面，同时带了POST请求时，这个函数将响应
	'''
	username = request.forms.get('username')
	password = request.forms.get('password')
	return '<p>帐号:%s</p><p>密码:%s</p>' %(username,password)


@route('/info')
def info():
	id = request.query.id
	name = request.query.name 
	age = request.query.age
	return "id=%s,name=%s,age=%s" % (id,name,age)

run(host='0.0.0.0', port=8080, debug=True)   #开启服务


