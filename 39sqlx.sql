SELECT DISTINCT a.ship 
FROM (SELECT ship,
             result,
             date
      FROM outcomes o
      JOIN battles bt
        ON o.battle=bt.name
      WHERE result = 'damaged') a
JOIN (SELECT ship, 
             result, 
             date
      FROM outcomes o
      JOIN battles bt
        ON o.battle=bt.name) b
ON a.ship=b.ship
AND b.date>a.date