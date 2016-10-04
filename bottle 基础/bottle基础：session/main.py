#/usr/bin/env python
#coding=utf-8
#更多资料请访问：www.linuxyw.com
from bottle import route, run ,redirect,request,default_app
from beaker.middleware import SessionMiddleware

#设置session参数
session_opts = {
    'session.type':'file',	             # 以文件的方式保存session
    'session.cookei_expires':3600,       # session过期时间为3600秒
    'session.data_dir':'/tmp/sessions',  # session存放路径
    'sessioni.auto':True
    }

@route('/login')
def login():
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
	username = request.forms.get('username')
	password = request.forms.get('password')
	if username == 'linuxyw.com' and password == 'www.linuxyw.com':
		s = request.environ.get('beaker.session')
		s['user'] = username
		s.save()
	return redirect('/')

@route('/')
def index():
	for k,v in request.environ.items():
		print "K:%s	V:%s" %(k,v)
	s = request.environ.get('beaker.session')
	username = s.get('user',None)
	if not username:
		return redirect('/login')	

	return "欢迎你：%s" % username

app = default_app()
app = SessionMiddleware(app, session_opts)
run(app=app,host='0.0.0.0', port=8080,debug=True)
