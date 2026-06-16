from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello to Philips</h1>"

print("File loaded")

if __name__ == "__main__":
    print("Starting Flask...")
    app.run(host="0.0.0.0", port=8080)