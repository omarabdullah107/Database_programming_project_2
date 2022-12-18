--Query 19:

SELECT f.film_id,
        initcap(f.title) AS title,
        f.release_year,
        trim(BOTH FROM l.name) AS film_language,
        f.rating,
        (SELECT array
             (SELECT c.name
              FROM public.film_category AS fc
              JOIN public.category AS c ON fc.category_id = c.category_id
              WHERE film_id = f.film_id)::text AS categories),
        (SELECT array
             (SELECT initcap(concat(a.first_name, ' ', a.last_name)) AS actors
              FROM public.film_actor AS fa
              JOIN public.actor AS a ON fa.actor_id = a.actor_id
              WHERE film_id = f.film_id)::text AS actor_array), 
        f.rental_duration,
        f.length AS length_minutes,
        f.replacement_cost,
        f.rental_rate
    FROM public.film f
        JOIN public.language l ON f.language_id = l.language_id
    GROUP BY f.film_id, (trim(BOTH FROM l.name));
