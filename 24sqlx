with models_max as (
select model, price from Laptop where price = (select max(price) from Laptop)
union
select model, price from PC where price = (select max(price) from PC)
union
select model, price from Printer where price = (select max(price) from Printer))
select  model from models_max where 
price = (select max(price) from models_max)