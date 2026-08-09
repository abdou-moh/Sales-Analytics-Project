select s.Segment, count(distinct(s.Customer_ID)) as Customers 
from superstore_cleaned s group by s.Segment

select s.Segment, sum(s.Sales) as Sales
from superstore_cleaned s group by s.Segment

select s.Segment, sum(s.Profit) as Sales
from superstore_cleaned s group by s.Segment

select top 10 s.Customer_Name, sum(s.Sales) as Sales
from superstore_cleaned s group by s.Customer_Name order by sum(s.Sales) desc

select top 10 s.Customer_Name, sum(s.Profit) as Profit
from superstore_cleaned s group by s.Customer_Name order by sum(s.Profit) desc

select s.Customer_Name, avg(s.Sales) as Avg_sales
from superstore_cleaned s group by s.Customer_Name order by avg(s.Sales) desc

select s.Customer_Name, count(s.Order_ID) as Orders
from superstore_cleaned s group by s.Customer_Name order by count(s.Order_ID) desc







