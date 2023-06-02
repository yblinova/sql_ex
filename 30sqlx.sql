SELECT a.point, a.date, SUM(out),SUM(inc) 
FROM (
    SELECT i.point,i.date, null AS out, SUM(i.inc) AS inc FROM Income i
    GROUP BY i.point,i.date
    UNiON 
    SELECT o.point,o.date,SUM(o.out) AS out , null AS inc FROM Outcome o
    GROUP BY o.point,o.date) AS a
    GROUP BY point,date