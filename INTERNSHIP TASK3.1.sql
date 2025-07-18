CREATE TABLE Sales (
    SaleID INTEGER PRIMARY KEY,
    CustomerName VARCHAR(50),
    Place VARCHAR(50),
    Amount INTEGER,
    SaleDate DATE
);

INSERT INTO Sales (SaleID, CustomerName, Place, Amount, SaleDate) VALUES
(1, 'Pavan', 'Hyderabad', 500, '2025-06-01'),
(2, 'Tushar', 'Pune', 700, '2025-06-02'),
(3, 'Sagar', 'Solapur', 300, '2025-06-03'),
(4, 'Tanaji', 'Mumbai', 400, '2025-06-04'),
(5, 'Vikram', 'Bengaluru', 600, '2025-06-05'),
(6, 'Kishore', 'Chennai', 800, '2025-06-06');

select * from Sales;
SELECT COUNT(*) FROM Sales;