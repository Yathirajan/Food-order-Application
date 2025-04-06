CREATE DATABASE zomato;

USE zomato;

CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    item_id INT,
    quantity INT NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into orders table
INSERT INTO orders (user_id, item_id, quantity, delivery_address) VALUES
(1, 1, 2, '123 Main St'),
(2, 2, 1, '456 Oak Rd'),
(3, 3, 3, '789 Pine Ave');


CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Insert sample data into categories table
INSERT INTO categories (category_name) VALUES
('Vegetarian'),
('Non-Vegetarian'),
('Vegan');


CREATE TABLE IF NOT EXISTS items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT
);

-- Insert sample data into items table
INSERT INTO items (item_name, price, category_id) VALUES
('Biriyani', 150.00, 2),  -- Non-Vegetarian
('Paneer', 100.00, 1),    -- Vegetarian
('Butter Chicken', 200.00, 2);  -- Non-Vegetarian

CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

-- Insert sample data into order_items table
INSERT INTO order_items (order_id, item_id, quantity, price) VALUES
(1, 1, 2, 150.00),
(2, 2, 1, 100.00),
(3, 3, 3, 200.00);

CREATE TABLE IF NOT EXISTS payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    amount DECIMAL(10, 2),
    paid_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into payments table
INSERT INTO payments (order_id, payment_method, payment_status, amount) VALUES
(1, 'Credit Card', 'Paid', 300.00),
(2, 'Debit Card', 'Paid', 100.00),
(3, 'GPay', 'Pending', 600.00);


CREATE TABLE IF NOT EXISTS customers (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(255)
);

-- Insert sample data into customers table
INSERT INTO customers (user_id, first_name, last_name, phone_number, email) VALUES
(1, 'John', 'Doe', '123-456-7890', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', '111-222-3333', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', '444-555-6666', 'bob.brown@example.com'),
(5, 'Gowtham', 'Kumar', '777-888-9999', 'gowtham.kumar@example.com');


