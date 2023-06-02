SELECT DISTINCT name
FROM ships s
FULL JOIN classes c
  ON c.class = s.class
WHERE launched IS NOT NULL
  AND type = 'bb'
  AND launched >= 1922
  AND displacement >35000