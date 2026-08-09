select Year(s.Order_Date) as Year, sum(s.Sales) as Sales
from superstore_cleaned s group by Year(s.Order_Date) order by sum(s.Sales) desc


select Year(s.Order_Date) as Year, sum(s.Profit) as Profit
from superstore_cleaned s group by Year(s.Order_Date) order by sum(s.Profit) desc

select Month(s.Order_Date) as Month, sum(s.Sales) as Sales
from superstore_cleaned s group by Month(s.Order_Date) order by sum(s.Sales) desc


select Month(s.Order_Date) as Month, sum(s.Profit) as Profit
from superstore_cleaned s group by Month(s.Order_Date) order by sum(s.Profit) desc

select Year(s.Order_Date) as Year, sum(s.Sales) as Sales
from superstore_cleaned s group by Year(s.Order_Date) order by sum(s.Sales) desc

WITH YearlySales AS (
    SELECT 
        YEAR(Order_Date) AS Sales_Year, 
        SUM(Sales) AS Total_Sales
    FROM superstore_cleaned
    GROUP BY YEAR(Order_Date)
)
SELECT 
    curr.Sales_Year AS current_year,
    curr.Total_Sales AS current_sales,
    prev.Total_Sales AS previous_sales,
    ((curr.Total_Sales - prev.Total_Sales) * 100.0 / prev.Total_Sales) AS yoy_growth
FROM YearlySales curr
LEFT JOIN YearlySales prev 
    ON curr.Sales_Year = prev.Sales_Year + 1
ORDER BY curr.Sales_Year;

WITH YearlyProfit AS (
    SELECT 
        YEAR(Order_Date) AS Profit_Year, 
        SUM(Profit) AS Total_Profit
    FROM superstore_cleaned
    GROUP BY YEAR(Order_Date)
)
SELECT 
    curr.Profit_Year AS current_year,
    curr.Total_Profit AS current_sales,
    prev.Total_Profit AS previous_sales,
    ((curr.Total_Profit - prev.Total_Profit) * 100.0 / prev.Total_Profit) AS yoy_growth
FROM YearlyProfit curr
LEFT JOIN YearlyProfit prev 
    ON curr.Profit_Year = prev.Profit_Year + 1
ORDER BY curr.Profit_Year;
