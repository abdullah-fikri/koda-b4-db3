SELECT id, first_name, COUNT(genre) AS total_genre
FROM directors 
JOIN directors_genres dg ON director_id = directors.id
GROUP BY id, first_name;

SELECT id, first_name, COUNT(id)   AS many_roles
FROM actors
JOIN roles ON actor_id = actors.id
GROUP BY id, first_name 
HAVING COUNT(id) > 5
