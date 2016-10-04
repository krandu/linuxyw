#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run 
from bottle import template

@route('/')
def index():
	return template('index')

run(host='0.0.0.0', port=8080, debug=True)   #开启服务


