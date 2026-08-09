select * from superstore_cleaned s

select *
from superstore_cleaned s
where s.Profit is null

/*	25035 order		*/
select COUNT(distinct s.Order_ID)
from superstore_cleaned s

/*	1590 customer	*/
select COUNT(distinct s.Customer_ID)
from superstore_cleaned s

/*	10292 product	*/
select COUNT(distinct s.Product_ID)
from superstore_cleaned s

select sum(s.Sales) as total_sales
from superstore_cleaned s 

select sum(s.Profit) as total_sales
from superstore_cleaned s

select sum(s.Quantity) as total_sales
from superstore_cleaned s

select avg(s.Discount) as total_sales
from superstore_cleaned s

select (s.Profit / s.Sales) *100 as Profit_Margin
from superstore_cleaned s

