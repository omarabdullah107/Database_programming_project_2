--Query 14: 

SELECT c.last_name,
         c.first_name,
         c.email
FROM customer c
JOIN address a
    ON c.address_id = a.address_id
JOIN city ci
    ON a.city_id = ci.city_id
JOIN country co
    ON ci.country_id = co.country_id
WHERE country = 'Canada'
ORDER BY  last_name ASC;
