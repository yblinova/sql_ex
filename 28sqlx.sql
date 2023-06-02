with test as
(select maker, count(*) cnt
from Product 
group by maker
having count(*)=1)


select count(*)
from test