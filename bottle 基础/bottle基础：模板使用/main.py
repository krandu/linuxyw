#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run 
from bottle import template,view

@route('/login')
def login():
	return template('login')

	
	
# @route('/info')
# def info():
    # name = '戴儒锋'
    # age = '30'
    # blog = 'www.linuxyw.com'
    # qq = '63780668'
    # return template('info',tname = name,tage = age,tblog = blog, tqq = qq)

	
@route('/info')
@view('info')
def info():
	name = '戴儒锋'
	age = '30'
	blog = 'www.linuxyw.com'
	qq = '63780668'
	book = ['python','linux','php']
	price = {'pc':4000,'phone':2000,'bike':600}
	data = {'tname':name,'tage':age,'tblog':blog, 'tqq': qq,'tbook':book,'tprice':price}
	return data

run(host='0.0.0.0', port=8080, debug=True)


