--Query 10: 

SELECT last_name,
         count(last_name)
FROM actor
where first_name like '%D'
GROUP BY  last_name;

