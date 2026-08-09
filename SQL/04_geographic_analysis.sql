select s.Region, sum(s.Sales) as Sales
from superstore_cleaned s group by s.Region order by sum(s.Sales) desc

select s.Region, sum(s.Profit) as Profit
from superstore_cleaned s group by s.Region order by sum(s.Profit) desc

select s.Country, sum(s.Sales) as Sales
from superstore_cleaned s group by s.Country order by sum(s.Sales) desc

select s.Country, sum(s.Profit) as Profit
from superstore_cleaned s group by s.Country order by sum(s.Profit) desc

select s.Country, sum(s.Profit) as Profit
from superstore_cleaned s group by s.Country having sum(s.Profit)<0 order by sum(s.Profit) asc

select top 10 s.City, sum(s.Profit) as Profit
from superstore_cleaned s group by s.City order by sum(s.Profit) desc

select top 10 s.City, sum(s.Profit) as Profit
from superstore_cleaned s group by s.City order by sum(s.Profit) asc










