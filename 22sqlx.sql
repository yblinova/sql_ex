select speed, avg(price) as avg_price
from PC where speed > 600
group by speed
