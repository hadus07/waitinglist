from bottle import *
import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEText

msg = MIMEMultipart()
msg['From'] = "waitinglist.bi@gmail.com"
msg['Subject'] = "It's your turn!"

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login("waitinglist.bi@gmail.com", "waitinglist07")

ls = []

@route('/')
@view('index')
def app():
    return dict(ls = ls)

@route('/start', method='POST')
@view('index')
def handle_submit():
    ls.append(dict(
        name = request.forms.name,
        email = request.forms.email,
        num = request.forms.num,
    ))

    return dict(ls = ls)

@route('/delete', method='POST')
@view('index')
def handle_delete():
    del_id = int(request.forms.del_id)
    if(del_id >= 0):
        ls.pop(del_id)

    return dict(ls = ls)

@route('/call', method='POST')
@view('index')
def handle_call():
    call_id = int(request.forms.call_id)
    if(call_id >= 0):
        name = ls[call_id]['name']
        body = "Dear " + name + "\nWe would like to inform you that it is now your turn in \"SomeOffice\".\nPlease come and enjoy/join\n\nSincerely,\n\nSomeOffice."
        msg.attach(MIMEText(body, 'plain'))
        text = msg.as_string()
        msg['To'] = ls[call_id]['email']
        server.sendmail("waitinglist.bi@gmail.com", ls[call_id]['email'], text)

        ls.pop(call_id)

    return dict(ls = ls)

run(host='localhost', port=8080)