SELECT AVG(datatable.price) FROM
(
(SELECT PC.Price 
FROM PC INNER JOIN 
Product p1 ON PC.model=P1.model     
WHERE P1.maker='A') 
UNION ALL 
(SELECT Laptop.price 
FROM Laptop INNER JOIN
Product p2 ON Laptop.model=P2.model 
WHERE P2.maker='A')
) datatable
