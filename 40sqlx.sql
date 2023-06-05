select maker, min(type) type
from product 
group by maker 
having count (distinct type) = 1 and
count (distinct model) > 1
