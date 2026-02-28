create database db;
use db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    joined_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'rahul@email.com', 'Guwahati', '2025-01-15'),
(2, 'Priya Das', 'priya@email.com', 'Delhi', '2025-02-01'),
(3, 'Amit Singh', 'amit@email.com', 'Guwahati', '2025-01-20'),
(4, 'Neha Patel', 'neha@email.com', 'Mumbai', '2025-02-10'),
(5, 'Vikash Roy', 'vikash@email.com', 'Bangalore', '2025-01-25');

INSERT INTO products VALUES
(101, 'React Crash Course Book', 'Books', 599.00),
(102, 'Node.js Guide', 'Books', 799.00),
(103, 'Wireless Mouse', 'Electronics', 1299.00),
(104, 'Laptop Stand', 'Electronics', 899.00),
(105, 'JavaScript Cookbook', 'Books', 1499.00);

INSERT INTO orders VALUES
(1001, 1, 101, 2, '2025-02-01', 1198.00),
(1002, 2, 103, 1, '2025-02-05', 1299.00),
(1003, 3, 102, 1, '2025-02-10', 799.00),
(1004, 1, 105, 1, '2025-02-15', 1499.00),
(1005, 4, 104, 2, '2025-02-20', 1798.00),
(1006, 5, 101, 1, '2025-02-25', 599.00),
(1007, 3, 103, 1, '2025-02-28', 1299.00);

select * from customers;
select  distinct quantity  from orders;
select * from  orders where quantity > 1;

select * from products where product_id = 101;
 
select * from customers where customer_id = '1' or city = 'Guwahati' ;

select * from customers where city not in ('Guwahati');

select * from customers where city  in ('Guwahati') limit 1;

select * from products order by product_name ASC limit 3;


 