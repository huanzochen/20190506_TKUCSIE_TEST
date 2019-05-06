SELECT film.film_id,film.title,film.description,film.length
FROM sakila.film film
where film.length BETWEEN 100 AND 150
ORDER BY (film.length) ASC