from flask import Flask
import os
import datetime
import subprocess
import pytz
import getpass

app = Flask(__name__)

@app.route('/htop')
def htop():
    name = "Rangu Sai Navya"  # Replace with your full name
    username = getpass.getuser()
    

    
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
