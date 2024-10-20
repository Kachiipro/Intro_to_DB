import mysql.connector
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="2234567@"
    )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE A DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")


except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Error: Access denied. Check your username or password.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Error: Database does not exist.")
    else:
        print(f"Error: {err}")
finally:
    if 'cursor' in locals() and cursor:
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
        print("MySQL connection closed.")
