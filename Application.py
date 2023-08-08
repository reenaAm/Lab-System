import os
import sqlite3
from flask import Flask, redirect, render_template, g, request, session, url_for

app = Flask(__name__)

# Replace 'database.db' with the path to your SQLite database file
app.config['DATABASE'] = 'LabUP.db'
app.config['SECRET_KEY'] = os.urandom(24)  # Generate a random secret key

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(app.config['DATABASE'])
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

@app.route('/', methods=['GET', 'POST'])
def Labs():
    if request.method == 'POST':
        lab_id = request.Labs['Labs']  # Get the selected labID from the Labs
        session['selected_lab_id'] = lab_id 
        return redirect(url_for('devices'))  # Redirect to the 'devices' route

    # Fetch options from the database
    cursor = get_db().cursor()
    cursor.execute('SELECT Name, labID FROM Lab')
    options = cursor.fetchall()
    cursor.close()
    return render_template('Labs.html', options=options)

@app.route('/devices', methods=['GET'])
def devices():
    lab_id = session.get('selected_lab_id')
    print(lab_id)
    # Fetch options from the database based on the labID
    cursor = get_db().cursor()
    cursor.execute('SELECT DeviceName FROM Devices WHERE labID = ?', (lab_id,))
    options = cursor.fetchall()
    cursor.close()

    # Prepare devicesbox_options based on the fetched options
    devicesbox_options = [option[0] for option in options]

    return render_template('devices.html', options=devicesbox_options)

if __name__ == '__main__':
    app.run(debug=True)