select name
from ships
where name = class
union 
select ship 
from Outcomes
where ship not in
(select name from Ships)
and ship in 
(select class from Classes)