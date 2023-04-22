from flask import Flask,request,make_response
import uuid,json
from flask_cors import CORS, cross_origin
from werkzeug.security import generate_password_hash as GPH, check_password_hash as CPH
from functools import wraps
from datetime import datetime, timedelta
from flask_sqlalchemy import SQLAlchemy
import os


app = Flask(__name__)
app.config.from_object('config')
cors = CORS(app)
db   = SQLAlchemy(app)

@app.route('/')
def home():
    db.session.connection()
    return 'Connected'

@app.route('/whatsaap',methods=['POST'])
def delete_user():
    return ''



if __name__ == "__main__":
    port = int(os.environ.get('PORT', 5050))
    app.run(host='0.0.0.0')#, use_reloader=False)