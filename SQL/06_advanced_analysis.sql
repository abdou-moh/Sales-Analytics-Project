SELECT 
    Category,
    Product_Name,
    SUM(Profit) AS Total_Profit,
    DENSE_RANK() OVER (
        PARTITION BY Category 
        ORDER BY SUM(Profit) DESC
    ) AS Profit_Rank
FROM superstore_cleaned
GROUP BY Category, Product_Name
ORDER BY Category, Profit_Rank;
------------------------------------------------------------------------------------

WITH MonthlySales AS (
    SELECT 
        DATEFROMPARTS(YEAR(Order_Date), MONTH(Order_Date), 1) AS Sales_Month,
        SUM(Sales) AS Monthly_Sales
    FROM superstore_cleaned
    GROUP BY YEAR(Order_Date), MONTH(Order_Date)
)
SELECT 
    Sales_Month,
    Monthly_Sales,
    SUM(Monthly_Sales) OVER (
        ORDER BY Sales_Month 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Running_Total_Sales
FROM MonthlySales
ORDER BY Sales_Month;
----------------------------------------------------------------------------

WITH YearlySales AS (
    SELECT 
        YEAR(Order_Date) AS Sales_Year,
        SUM(Sales) AS Total_Sales
    FROM superstore_cleaned
    GROUP BY YEAR(Order_Date)
)
SELECT 
    Sales_Year,
    Total_Sales AS Current_Year_Sales,
    LAG(Total_Sales, 1) OVER (ORDER BY Sales_Year) AS Previous_Year_Sales,
    Total_Sales - LAG(Total_Sales, 1) OVER (ORDER BY Sales_Year) AS Sales_Difference,
    ROUND(
        ((Total_Sales - LAG(Total_Sales, 1) OVER (ORDER BY Sales_Year)) * 100.0) 
        / LAG(Total_Sales, 1) OVER (ORDER BY Sales_Year), 2
    ) AS YoY_Growth_Percent
FROM YearlySales
ORDER BY Sales_Year;

-----------------------------------------------------------------------------------------

WITH RankedProducts AS (
    SELECT 
        Category,
        Product_Name,
        SUM(Profit) AS Total_Profit,
        DENSE_RANK() OVER (
            PARTITION BY Category 
            ORDER BY SUM(Profit) DESC
        ) AS Profit_Rank
    FROM superstore_cleaned
    GROUP BY Category, Product_Name
)
SELECT 
    Category,
    Profit_Rank,
    Product_Name,
    Total_Profit
FROM RankedProducts
WHERE Profit_Rank <= 3
ORDER BY Category, Profit_Rank;
----------------------------------------------------------------------------------
WITH CustomerSales AS (
    SELECT 
        Customer_ID,
        Customer_Name,
        SUM(Sales) AS Total_Customer_Sales
    FROM superstore_cleaned
    GROUP BY Customer_ID, Customer_Name
)
SELECT 
    Customer_ID,
    Customer_Name,
    Total_Customer_Sales
FROM CustomerSales
WHERE Total_Customer_Sales > (
    SELECT AVG(Total_Customer_Sales) 
    FROM CustomerSales
)
ORDER BY Total_Customer_Sales DESC;
