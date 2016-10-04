#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run 
from bottle import template,static_file

#定义图片路径
images_path = './images'

@route('/images/<filename:re:.*\.png>')
def server_static(filename):
    return static_file(filename, root=images_path)

	
# @route('/assets/<filename:re:.*\.css|.*\.js|.*\.png|.*\.jpg|.*\.gif>')
# def server_static(filename):
    # """定义/assets/下的静态(css,js,图片)资源路径"""
    # return static_file(filename, root=assets_path)

# @route('/assets/<filename:re:.*\.ttf|.*\.otf|.*\.eot|.*\.woff|.*\.svg|.*\.map>')
# def server_static(filename):
    # """定义/assets/字体资源路径"""
    # return static_file(filename, root=assets_path)
	
@route('/')
def index():
	return template('index')

run(host='0.0.0.0', port=8080, debug=True)






