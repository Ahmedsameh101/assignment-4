CREATE DATABASE store_management;
USE store_management;

CREATE TABLE governorates ( governorate_id INT AUTO_INCREMENT PRIMARY KEY, governorate_name VARCHAR(100) NOT NULL);

CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(100),
    brief_data TEXT);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    supplier_id INT UNIQUE NOT NULL,
    FOREIGN KEY (supplier_id)
    REFERENCES suppliers(supplier_id)
);

CREATE TABLE stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

CREATE TABLE governorates_stores (
    governorate_id INT NOT NULL,
    store_id INT NOT NULL,
    PRIMARY KEY (governorate_id, store_id),
    FOREIGN KEY (governorate_id)
    REFERENCES governorates(governorate_id),
    FOREIGN KEY (store_id)
    REFERENCES stores(store_id));