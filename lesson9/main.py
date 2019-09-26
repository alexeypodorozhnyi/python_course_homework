from flask import Flask, request, render_template

app = Flask(__name__)
@app.route('/')

def hello():
	return render_template("index.html")

@app.route('/response', methods=['POST'])
def response():
	emailInfo, = request.form.get("emailInfo")
	passwordInfo = request.form.get("passwordInfo")
	return render_template("index.html", emailInfo=emailInfo, passwordInfo=passwordInfo)
if __name__ == '__main__':
 app.run(host="0.0.0.0", port=5000)