select maker
from Product join PC 
on Product.model = PC.model where PC.speed >= 750
intersect
select maker
from Product join Laptop 
on Product.model = Laptop.model where Laptop.speed >= 750
