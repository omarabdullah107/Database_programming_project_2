--Query 9:

SELECT last_name,
         count(last_name)
FROM actor
GROUP BY  last_name;

