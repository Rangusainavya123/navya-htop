from flask import Flask
import os
import datetime
import subprocess
import pytz
import getpass

app = Flask(__name__)

@app.route('/htop')
def htop():
    name = "Rangu Sai Navya"  # Your full name
    username = getpass.getuser()
    ist = datetime.datetime.now(pytz.timezone('Asia/Kolkata'))
    server_time = ist.strftime("%Y-%m-%d %H:%M:%S %Z%z")
    
    try:
        top_output = subprocess.check_output(['top', '-b', '-n', '1'], text=True)
    except Exception as e:
        top_output = f"Error fetching top: {e}"
    
    return f"""
    <h2>Name: {name}</h2>
    <h2>Username: {username}</h2>
    <h2>Server Time (IST): {server_time}</h2>
    <pre>{top_output}</pre>
    """
    
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
