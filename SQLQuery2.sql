CREATE DATABASE SuperstoreDB;
USE SuperstoreDB;
CREATE TABLE SuperstoreSales (
    ROW_ID INT PRIMARY KEY,  -- Include ROW ID as the primary key if you want to keep it
    OrderID INT,
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(20),
    Region VARCHAR(50),
    ProductID VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    ProductName VARCHAR(255),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(18, 2)
);
SELECT * from dbo.SuperstoreSales;
SELECT COUNT(*) FROM SuperstoreSales;
EXEC sp_help 'SuperstoreSales';
DROP TABLE dbo.SuperstoreSales;
CREATE TABLE SuperstoreSales (
    Row_ID INT PRIMARY KEY,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(150),
    Sales DECIMAL(18,2),
    Quantity INT,
    Discount FLOAT,
    Profit DECIMAL(18,2)
);
ALTER TABLE SuperstoreSales 
ALTER COLUMN Order_ID VARCHAR(50) NULL;

ALTER TABLE SuperstoreSales 
ALTER COLUMN Postal_Code INT NULL;

ALTER TABLE SuperstoreSales 
ALTER COLUMN Discount FLOAT NULL;

ALTER TABLE SuperstoreSales 
ALTER COLUMN Product_Name VARCHAR(150) NULL;
SELECT * from Superstore;
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;
SELECT Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT TOP 10 Product_Name, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
SELECT Segment, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT Ship_Mode, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Ship_Mode
ORDER BY Total_Sales DESC;
SELECT SUM(Profit) AS Total_Profit, SUM(Sales) AS Total_Sales,
       (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM Superstore;
SELECT MONTH(Order_Date) AS Month, YEAR(Order_Date) AS Year, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;
SELECT City, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY City
ORDER BY Total_Sales DESC;
SELECT YEAR(Order_Date) AS Year, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY YEAR(Order_Date)
ORDER BY Year;
SELECT Region, Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region, Category
ORDER BY Region, Total_Sales DESC;
