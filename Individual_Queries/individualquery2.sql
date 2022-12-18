--Query 2:
select
    category.name,
    count(category.name) category_count
from
    category
left join film_category on
    category.category_id = film_category.category_id
left join film on
    film_category.film_id = film.film_id
group by
    category.name
order by
    category_count desc;
