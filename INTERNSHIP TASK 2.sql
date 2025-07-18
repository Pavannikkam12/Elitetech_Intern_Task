USE sql_internship;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Place VARCHAR(100),
    Amount INT,
    SaleDate DATE
);

INSERT INTO Sales (SaleID, CustomerName, Place, Amount, SaleDate) VALUES
(1, 'Pavan', 'Hyderabad', 500, '2025-06-01'),
(2, 'Tushar', 'Pune', 700, '2025-06-02'),
(3, 'Sagar', 'Satara', 300, '2025-06-03'),
(4, 'Tanaji', 'Mumbai', 400, '2025-06-04'),
(5, 'Vikram', 'Bengaluru', 600, '2025-06-05'),
(6, 'Kishore', 'Chennai', 800, '2025-06-06');

alter table Sales change column Region 
Place VARCHAR(50);
select * from Sales;

#Customers who made a sale above the average sale amount(subquery Example)
SELECT CustomerName, Amount
FROM Sales
WHERE Amount > (SELECT AVG(Amount) FROM Sales);

-- Rank customers by their total amount spent(windows function Example)
SELECT CustomerName, Amount,
       RANK() OVER (PARTITION BY CustomerName ORDER BY Amount DESC) AS RankByAmount
FROM Sales;

-- CTE to calculate total amount per customer(CTE Example)
WITH CustomerTotals AS (
    SELECT CustomerName, SUM(Amount) AS TotalSpent
    FROM Sales
    GROUP BY CustomerName
)
SELECT * FROM CustomerTotals
WHERE TotalSpent > 500;

select * from sales;

#Trends and Patterns
#Trend 1-Total Sales per Place
SELECT Place, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Place
ORDER BY TotalSales DESC; 

#trend 2-Average sale amount per customer
SELECT CustomerName, AVG(Amount) AS AvgSale
FROM Sales
GROUP BY CustomerName
ORDER BY AvgSale DESC;

#Pattern- Daily sales trend
SELECT SaleDate, SUM(Amount) AS DailyTotal
FROM Sales
GROUP BY SaleDate
ORDER BY SaleDate;

#Pattern-high value sales
SELECT *FROM Sales
WHERE Amount > (SELECT AVG(Amount) FROM Sales)
ORDER BY Amount DESC;

#pattern- customer ranking 
SELECT CustomerName, Amount,
       RANK() OVER (PARTITION BY CustomerName ORDER BY Amount DESC) AS RankByAmount
FROM Sales;

