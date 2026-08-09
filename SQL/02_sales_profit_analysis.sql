select SUM(s.Sales) as sales, SUM(s.Profit) as profit,s.Category
from superstore_cleaned s group by s.Category

select SUM(s.Sales) as sales, SUM(s.Profit) as profit,s.Sub_Category
from superstore_cleaned s group by s.Sub_Category

select top 1 s.Category , count(s.Order_ID) as total_orders
from superstore_cleaned s group by s.Category order by count(s.Order_ID) desc 

select top 1 s.Category , sum(s.Profit) as profit
from superstore_cleaned s group by s.Category order by sum(s.Profit) desc

select s.Sub_Category , sum(s.Profit) as profit
from superstore_cleaned s group by s.Sub_Category having sum(s.Profit)<0 order by sum(s.Profit) asc 

select top 10 s.Product_Name , sum(s.Profit) as profit
from superstore_cleaned s group by s.Product_Name order by sum(s.Profit) desc

select top 10 s.Product_Name , sum(s.Sales) as sales,sum(s.Profit) as profit , (sum(s.Sales) - sum(s.Profit)) as gap
from superstore_cleaned s group by s.Product_Name order by sum(s.Sales) - sum(s.Profit) desc



