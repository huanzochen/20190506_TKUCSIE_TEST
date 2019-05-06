SELECT lang.language_id,lang.name,ifnull(SUM(film.language_id),0) total
FROM sakila.language lang
left join sakila.film film
on film.language_id = lang.language_id
GROUP BY(lang.language_id)
