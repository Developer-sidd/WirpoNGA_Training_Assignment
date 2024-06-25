import mysql.connector
from mysql.connector import Error

def fetch_records():
    try:
        # Establishing the connection to the database
        connection = mysql.connector.connect(
            host='your_host',       # e.g., 'localhost'
            user='your_username',   # e.g., 'root'
            password='your_password', # e.g., 'password'
            database='your_database'  # e.g., 'test_db'
        )
        
        if connection.is_connected():
            print("Connected to MySQL database")

            # Creating a cursor object to interact with the database
            cursor = connection.cursor()

            # SQL query to fetch records from a table
            query = "SELECT * FROM your_table_name"  # Replace with your table name

            # Executing the SQL query
            cursor.execute(query)

            # Fetching all rows from the executed query
            records = cursor.fetchall()
            print("Fetched records:")
            for row in records:
                print(row)

    except Error as e:
        print(f"Error: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    fetch_records()
