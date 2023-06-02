SELECT * FROM (SELECT class 
               FROM (SELECT DISTINCT name, 
                            class
                     FROM ships) b
               UNION ALL
               SELECT DISTINCT class
               FROM classes
               JOIN outcomes
                ON classes.class=outcomes.ship
               WHERE outcomes.ship NOT IN (SELECT name
                                           FROM ships)
               ) a
GROUP BY class
HAVING COUNT(class)=1