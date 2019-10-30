from flask import Flask
from flask import request
from flask import render_template
app = Flask(__name__)

@app.route("/author/list")
def author_list():
    return render_template("list.html")

@app.route("/author/add")
def author_add():
    return render_template('add.html')