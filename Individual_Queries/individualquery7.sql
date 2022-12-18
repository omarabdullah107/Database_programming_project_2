--Query 7: 

explain analyze SELECT *
FROM public.actor
WHERE last_name similar to '%[GEN]%' and last_name = 'Smith';
