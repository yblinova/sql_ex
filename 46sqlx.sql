select  distinct ship, displacement, numGuns
from classes c left join 
ships s on s.class=c.class right join
outcomes o on o.ship=s.name or c.class = o.ship
where o.battle = 'Guadalcanal'