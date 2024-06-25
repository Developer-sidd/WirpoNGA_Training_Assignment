import sqlite3
from sqlite3 import Error

def create_connection(db_file):
    """ Create a database connection to the SQLite database specified by db_file
    :param db_file: database file
    :return: Connection object or None
    """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
        print(f"Connected to SQLite database '{db_file}'")
        return conn
    except Error as e:
        print(f"Error connecting to database: {e}")
    
    return conn

def insert_record(conn, record):
    """ Insert a new record into the users table
    :param conn: Connection object
    :param record: Tuple containing record values (ID, Name, Age)
    :return: None
    """
    sql = ''' INSERT INTO users(ID, Name, Age)
              VALUES(?, ?, ?) '''
    try:
        cur = conn.cursor()
        cur.execute(sql, record)
        conn.commit()
        print("Record inserted successfully")
    except Error as e:
        print(f"Error inserting record: {e}")

def main():
    database = r"mydatabase.db"  # Replace with your database file path

    # create a database connection
    conn = create_connection(database)
    if conn is None:
        return

    # Example record to insert (replace with actual values)
    record_to_insert = (1, 'John Doe', 30)

    # Insert a new record
    insert_record(conn, record_to_insert)

    # Close the database connection
    conn.close()

if __name__ == '__main__':
    main()
