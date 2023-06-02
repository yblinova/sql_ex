select distinct Maker, price
from Product
inner join
printer
on Product.model = printer.model
where color = 'y' and price = ( select min (price)
from 
Product
inner join
printer
on Product.model = printer.model
where color = 'y')
