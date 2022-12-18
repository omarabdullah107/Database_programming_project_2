--Query 3:
select
    actor.first_name,
    actor.last_name,
    count(actor.first_name) featured_count
from
    actor
left join film_actor on
    actor.actor_id = film_actor.actor_id
group by
    actor.first_name,
    actor.last_name
order by
    featured_count desc;
    
    
    
    




