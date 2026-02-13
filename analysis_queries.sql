-- Total revenue
SELECT SUM(Quantity * Price) AS TotalRevenue FROM sales_data;

-- Revenue by category
SELECT Category, SUM(Quantity * Price) AS Revenue
FROM sales_data
GROUP BY Category;

-- Top selling product
SELECT Product, SUM(Quantity) AS TotalSold
FROM sales_data
GROUP BY Product
ORDER BY TotalSold DESC;

-- Revenue by city
SELECT City, SUM(Quantity * Price) AS Revenue
FROM sales_data
GROUP BY City;
