CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE author(
id_author INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(50) NOT NULL,
UNIQUE(first_name, last_name),
INDEX author_last_name (last_name));

CREATE TABLE book(
id_book INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
author_id INT NOT NULL,
ISBN_13 VARCHAR(20) UNIQUE NOT NULL,
year_of_issue YEAR,
price DEC(10,2) NOT NULL,
CHECK(ISBN_13 RLIKE '[0-9]+[-]+[0-9]'),
FOREIGN KEY (author_id) REFERENCES author(id_author),
INDEX book_title (title));

CREATE TABLE book_format(
id_format INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
b_format VARCHAR(30) NOT NULL);

CREATE TABLE book_has_format(
id_bhf INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
book_id INT NOT NULL,
format_id INT NOT NULL,
FOREIGN KEY (book_id) REFERENCES book(id_book),
FOREIGN KEY (format_id) REFERENCES book_format(id_format));

CREATE TABLE book_genre(
id_genre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
genre VARCHAR(30) NOT NULL);

CREATE TABLE publisher(
id_publish INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pub_house VARCHAR(100) NOT NULL,
pub_address VARCHAR(100),
pub_phone VARCHAR(20) UNIQUE,
contact_person VARCHAR(50),
CHECK(pub_phone RLIKE '^[+ 0-9 ( )-]+[0-9 -]$'));

CREATE TABLE additional_information(
id_info INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
book_id INT NOT NULL,
genre_id INT NOT NULL,
publish_id INT NOT NULL,
page_num INT,
staff_comment TEXT,
FOREIGN KEY (book_id) REFERENCES book(id_book),
FOREIGN KEY (genre_id) REFERENCES book_genre(id_genre),
FOREIGN KEY (publish_id) REFERENCES publisher(id_publish));

CREATE TABLE shop(
id_shop INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
shop_address VARCHAR(100) NOT NULL UNIQUE,
shop_phone VARCHAR(20) UNIQUE,
CHECK(shop_phone RLIKE '^[+ 0-9 ( )-]+[0-9 -]$'));

CREATE TABLE shop_has_book(
id_shb INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
book_id INT NOT NULL,
shop_id INT,
FOREIGN KEY (book_id) REFERENCES book(id_book),
FOREIGN KEY (shop_id) REFERENCES shop(id_shop));

CREATE TABLE customer(
id_customer INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(50),
c_phone VARCHAR(20) UNIQUE,
c_address VARCHAR(100));

CREATE TABLE orders(
id_order INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
order_number VARCHAR(15) NOT NULL,
customer_id INT NOT NULL,
book_id INT NOT NULL,
price_of_book DEC(10,2) NOT NULL,
amount_of_books INT NOT NULL,
order_date TIMESTAMP DEFAULT NOW(),
CHECK(order_number RLIKE '^[0-9]{6}+[-]+[0-9]{1,5}$'),
FOREIGN KEY (customer_id) REFERENCES customer(id_customer),
FOREIGN KEY (book_id) REFERENCES book(id_book));

CREATE TABLE cost_of_order(
id_cost_of_order INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
number_order VARCHAR(15) NOT NULL,
customer_id INT NOT NULL,
amount_of_books INT NOT NULL,
total_cost DEC(10,2) NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(id_customer),
FOREIGN KEY (order_id) REFERENCES orders(id_order));

