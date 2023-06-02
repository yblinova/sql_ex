select maker, avg(hd)
from Product join PC on Product.model=PC.model
where maker in 
(select maker from Product where type = 'Printer')
group by maker