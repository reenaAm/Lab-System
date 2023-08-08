from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def reservation_page():
    # Connect to the SQLite database
    conn = sqlite3.connect('LabUP.db')  # Replace 'your_database_name.db' with the actual database name
    cursor = conn.cursor()

    # Fetch data from the Devices table
    cursor.execute("SELECT * FROM Devices")
    devices_data = cursor.fetchall()

    # Close the database connection
    conn.close()

    return render_template('labinfo.html', devices_data=devices_data)

if __name__ == '__main__':
    app.run()



