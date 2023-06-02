with pc_prod as (
    select pc.model, speed, maker from PC inner join
    Product on PC.model=Product.model
    where ram = (
        select min(ram) from PC)
)
select maker 
from pc_prod 
where speed =(
    select max(speed) from pc_prod)
intersect 
select maker 
from Product 
where type = 'Printer'
