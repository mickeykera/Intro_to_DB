#!/usr/bin/env python3
"""
MySQL Database Creation Script for ALX Book Store
This script creates the alx_book_store database in MySQL server.
"""

import mysql.connector
from mysql.connector import Error

def create_database():
    """
    Creates the alx_book_store database in MySQL server.
    Handles connection errors and database creation gracefully.
    """
    connection = None
    
    try:
        # Connect to MySQL server (without specifying a database)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",  # Change this to your MySQL username
            password="Mikeisthegoat1"   # Change this to your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Create database if it doesn't exist
            # Using CREATE DATABASE IF NOT EXISTS to avoid failure if database already exists
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)
            
            # Commit the changes
            connection.commit()
            
            print("Database 'alx_book_store' created successfully!")
            
            cursor.close()
            
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        
    finally:
        # Close the database connection
        if connection and connection.is_connected():
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
