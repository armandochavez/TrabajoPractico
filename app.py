from flask import Flask

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def hola():
    return "version 2.0,Hola, soy Armando 👋"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
