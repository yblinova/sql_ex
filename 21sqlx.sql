select maker, max(price)
from PC join Product on PC.model=Product.model
group by maker
