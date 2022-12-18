--Query 16: 

SELECT str.store_id,
         SUM(p.amount) AS total_sales
FROM store str
JOIN staff stf
    ON str.store_id = stf.store_id
JOIN payment p
    ON stf.staff_id = p.staff_id
GROUP BY  str.store_id;
