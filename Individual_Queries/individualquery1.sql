--Query 1:

 select
    film_id,
    title,
    length
from
    public.film	
where length > 160
order by
    length desc;
