#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run 
from bottle import template,static_file

#定义下载路径
download_path = './download'

#强制文件下载
@route('/download/<filename:path>')
def download(filename):
    return static_file(filename, root=download_path, download=filename)

@route('/')
def index():
	return template('index')

run(host='0.0.0.0', port=8080, debug=True)


