--Query 12: 

SELECT s.first_name,
         s.last_name,
         a.address
FROM staff s
LEFT JOIN address a
    ON s.address_id = a.address_id;
