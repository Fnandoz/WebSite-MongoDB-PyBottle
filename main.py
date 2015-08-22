# -*- coding: utf-8 -*-

from bottle import *
import pymongo
from datetime import datetime
import hashlib
import json

now = datetime.now()

con = pymongo.MongoClient("mongodb://localhost")

app = Bottle()

#Conexão com o DB de usuários
db1=con.usersdb
usr = db1.users

# Conexão com o DB de estoque
db2=con.loja
estoque = db2.estoque


# Exibe itens no estoque

doc = estoque.find({})
for i in doc:
    i
i = json.dumps(i, sort_keys=True, indent=4, separators=(',',':'))

 
# Index
@app.route("/")
def homepage():
    info = "Do Python para HTML"
    return template("teste", haha=i)



########################################################
#SignUp

def save_user():
    na = request.forms.get("nome")
    em = request.forms.get("email")
    se = request.forms.get("senha")

    # Criptografa a senha
    hash_pwd = hashlib.md5() 
    hash_pwd.update(se)    
    hash_pwd = hash_pwd.hexdigest()

            
    data = ("{}/{}/{} - GMT-3 {}:{}:{}").format(now.day, now.month, now.year,
                                          now.hour, now.minute, now.second)
    user = {"nome":na, "email":em,
            "senha":hash_pwd, "signup":data}

    try:
        usr.insert_one(user)
    except Exception as e:
        print "Erro:", type(e), e

    return '''<meta http-equiv="refresh" content="1;url=/">
              <h1> Usuário registrado com sucesso</h1>
         '''

@app.get("/signup")
def signup():
    return template("signup")

@app.route('/signup', method='POST')
def do_signup():
    return save_user()
########################################################



########################################################
# Login
def check_login(a, b):
    #Criptografa para comparar
    hash_mail = hashlib.md5()
    hash_pwd = hashlib.md5()
    
    hash_mail.update(a)
    hash_pwd.update(b)

    hash_mail = hash_mail.hexdigest()
    hash_pwd = hash_pwd.hexdigest()

    #Verifica login
    user = {'email':hash_mail, 'senha':hash_pwd}
    doc = usr.find_one(user)
    
    login_status = False

    if doc:
        login_status = True
        return '''
                <meta http-equiv="refresh" content="1;url=/">
                <h1>Login efetuado com sucesso!</h1>'''
    else:
        return '''
            <meta http-equiv="refresh" content="1;url=/login">
            <h1> Dados inválidos!</h1>
            '''
        
    
@app.get("/login")
def login():
    return template("login")

@app.route('/login', method='POST')
def do_login():
    mail = request.forms.get("email")
    pwd = request.forms.get("senha")
    return check_login(mail, pwd)

########################################################


@app.error(404)
def error404(error):
    return '''
            <meta http-equiv="refresh" content="3;url=/">
            <h2>Erro 404</h3>'''

run(app, host='localhost', port=7777, debug=True)
