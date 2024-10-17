-- create a database

CREATE DATABASE IF NOT EXISTS alx_book_store;

-- create books table

CREATE TABLE Books (book_id  INT AUTO_INCREMENT PRIMARY KEY, title VARCHAR(130), author_id INT, FOREIGN KEY(author_id) REFERENCES Authors(author_id), price DOUBLE, publication_date DATE);

--create authors table

CREATE TABLE Authors (author_id INT AUTO_INCREMENT Primary Key, author_name VARCHAR(215));

--CREATE TABLE FOR CUSTOMERS 

CREATE TABLE Customers (customer_id Primary Key, customer_name VARCHAR(215),email VARCHAR(215), address TEXT);

CREATE TABLE Orders ( order_id Primary Key, customer_id INT, FOREIGN KEY(customer_id) REFERENCES Customers(customer_id), order_date DATE);

CREATE TABLE Order_Details (orderdetailid INT Primary Key, order_id INT, FOREIGN KEY(order_id) REFERENCES Orders(order_id), FOREIGN KEY (book_id) REFERENCES Books(book_id), quantity DOUBLE);