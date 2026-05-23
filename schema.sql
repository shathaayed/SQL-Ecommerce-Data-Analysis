CREATE DATABASE IF NOT EXISTS ecommerce_analysis;
USE ecommerce_analysis;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    country VARCHAR(50),
    join_date DATE
);


CREATE TABLE products (
    products_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    category VARCHAR(20),
    price DECIMAL(10,2)
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    order_date DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (name, country, join_date) VALUES
('Shatha', 'Saudi Arabia', '2023-10-15'),
('Noor', 'Saudi Arabia', '2024-01-02'),
('Maha', 'Saudi Arabia', '2026-04-04'),
('Sara', 'Kuwait', '2026-01-10'),
('Farah', 'Egypt', '2025-02-03'),
('Salm', 'Kuwait', '2023-12-23'),
('Khaled', 'Egypt', '2024-08-20');


INSERT INTO products (product_name, category, price) VALUES
('iPad Air 11 inch', 'device', 3000.00),
('iPhone Max', 'device', 5000.00),
('Smart Watch', 'device', 296.49),
('Headphones', 'device', 166.98);

INSERT INTO orders (user_id, order_date, total) VALUES
(1, '2024-05-01', 200.00),
(4, '2022-10-22', 35.00),
(1, '2026-02-20', 3000.00),
(5, '2026-04-29', 120.00),
(4, '2026-04-21', 200.00),
(2, '2026-04-11', 33.00),
(1, '2026-04-10', 170.00),
(3, '2026-04-15', 67.00);
