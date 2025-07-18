-- Create database and Sales table
CREATE DATABASE IF NOT EXISTS sql_internship;
USE sql_internship;

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Place VARCHAR(50),
    Amount INT,
    SaleDate DATE
);

-- Insert data in MySQL
INSERT INTO Sales (SaleID, CustomerName, Place, Amount, SaleDate) VALUES
(1, 'Pavan', 'Hyderabad', 500, '2025-06-01'),
(2, 'Tushar', 'Pune', 700, '2025-06-02'),
(3, 'Sagar', 'Solapur', 300, '2025-06-03'),
(4, 'Tanaji', 'Mumbai', 400, '2025-06-04'),
(5, 'Vikram', 'Bengaluru', 600, '2025-06-05'),
(6, 'Kishore', 'Chennai', 800, '2025-06-06');

-- =======================================
-- ✅ POSTGRESQL SIDE
-- =======================================

-- Create the Sales table in PostgreSQL
CREATE TABLE IF NOT EXISTS Sales (
    SaleID INTEGER PRIMARY KEY,
    CustomerName VARCHAR(50),
    Place VARCHAR(50),
    Amount INTEGER,
    SaleDate DATE
);

-- Insert same data manually in PostgreSQL
INSERT INTO Sales (SaleID, CustomerName, Place, Amount, SaleDate) VALUES
(1, 'Pavan', 'Hyderabad', 500, '2025-06-01'),
(2, 'Tushar', 'Pune', 700, '2025-06-02'),
(3, 'Sagar', 'Solapur', 300, '2025-06-03'),
(4, 'Tanaji', 'Mumbai', 400, '2025-06-04'),
(5, 'Vikram', 'Bengaluru', 600, '2025-06-05'),
(6, 'Kishore', 'Chennai', 800, '2025-06-06');
