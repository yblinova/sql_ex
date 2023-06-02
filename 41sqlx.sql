select maker, 
       case 
       when sum (case
                 when price is null then 1
                 else 0
                 end) > 0 then null 
       else  max(price) 
       end
from (    
    select maker, price
    from Product join PC on PC.model=Product.model
    union
    select maker, price
    from Product join Printer on Product.model=Printer.model
    union
    select maker, price
    from Product join Laptop on Product.model=Laptop.model
) prod
group by maker
