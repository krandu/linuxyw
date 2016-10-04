#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
#导入bottle中的方法，没有安装，请访问：http://www.linuxyw.com/552.html
from bottle import route, run


@route('/hello')  #定义路由，即浏览器访问的地址
def hello():      #函数名根据功能随意定义吧，只要不使用系统关键字便可，一般推荐按功能命名吧
	return "Hello www.linuxyw.com"  #浏览器返回的内容


@route('/hello/<name>')
def helloName(name):
	return "hello:%s" % name

run(host='0.0.0.0', port=8080, debug=True)   #开启服务


