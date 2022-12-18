--Query 13: 


SELECT p.staff_id,
         COUNT(p.amount)
FROM payment p
LEFT JOIN staff s
    ON p.staff_id = s.staff_id
GROUP BY  p.staff_id;
