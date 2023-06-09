from flask import Flask, render_template, request, jsonify
from Chat import get_response
app= Flask(__name__)


@app.route('/api/predict', methods=['POST'])
def predict():
    text= request.get_json()["message"]
    print(text)
    response=get_response(text)
    message={"answer": response}
    return jsonify(message)

if __name__ == "__main__":
    app.run(debug=True)
