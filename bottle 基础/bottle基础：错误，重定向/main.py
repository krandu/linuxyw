#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run ,error,abort,redirect

@error(404)
def miss(code):
    #错误页面，一般来说，可以在网站制定一个404的HTML页面，然后用return template('404')去访问404这个页面
    return '没找到页面！'

@route('/error')
def nofound():
    #引发404错误
    abort(404)

@route('/')
def index():
    return '这里是首页'

@route('/page')
def page():
    #当访问/page的时候，跳转到首页
    redirect('/')

run(host='0.0.0.0', port=8080, debug=True)