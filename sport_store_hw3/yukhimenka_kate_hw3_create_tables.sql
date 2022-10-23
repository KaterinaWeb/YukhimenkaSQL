CREATE DATABASE sport_store;
USE sport_store;

CREATE TABLE category(
id_category INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pr_category VARCHAR(30) NOT NULL);

CREATE TABLE product(
id_product INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category_id INT NOT NULL,
price DEC(7,2) NOT NULL,
FOREIGN KEY (category_id) REFERENCES category(id_category));

CREATE TABLE customer(
id_customer INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(30) NOT NULL,
phone VARCHAR(20) UNIQUE, 
c_address VARCHAR(50),
UNIQUE(first_name, last_name),
CHECK(phone RLIKE '[+ 0-9 ( )-]+[0-9 -]$'));

CREATE TABLE orders(
id_order INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
product_id INT NOT NULL,
order_date TIMESTAMP DEFAULT NOW(),
delivery_required BOOLEAN,
FOREIGN KEY (customer_id) REFERENCES customer(id_customer),
FOREIGN KEY (product_id) REFERENCES product(id_product));
 


