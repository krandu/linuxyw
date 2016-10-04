#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run 
from bottle import request
#定义上传路径
save_path = './upload'


#文件上传的HTML模板，这里没有额外去写html模板了，直接写在这里，方便点吧
@route('/upload')
def upload():
    return '''
        <html>
            <head>
            </head>
            <body>
                <form action"/upload" method="post" enctype="multipart/form-data">
                    <input type="file" name="data" />
                    <input type="submit" value="Upload" />
                </form>
            </body>
        </html>
    '''

#文件上传，overwrite=True为覆盖原有的文件，
#如果不加这参数，当服务器已存在同名文件时，将返回“IOError: File exists.”错误
@route('/upload', method = 'POST')
def do_upload():
    upload = request.files.get('data')
    import os.path
    name, ext = os.path.splitext(upload.filename)  #用os.path.splitext方法把文件名和后缀相分离
    upload.filename = ''.join(('123',ext))
    upload.save(save_path,overwrite=True)  #把文件保存到save_path路径下
    return u'上传成功  原文件名是：%s  文件后缀名是：%s \n 修改后的文件名是：%s' %(name,ext,''.join(('123',ext)))

run(host='0.0.0.0', port=8080, debug=True)


