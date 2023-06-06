select maker,  avg(screen) as avg_scren
from Laptop
join Product on Laptop.model = Product.model
group by maker
