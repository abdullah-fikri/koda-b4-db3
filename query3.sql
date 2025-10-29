SELECT id, first_name, COUNT(genre) AS total_genre
FROM directors 
JOIN directors_genres dg ON director_id = directors.id
GROUP BY id, first_name;

SELECT id, first_name, COUNT(id)   AS many_roles
FROM actors
JOIN roles ON actor_id = actors.id
GROUP BY id, first_name 
HAVING COUNT(id) > 5


SELECT id, first_name, COUNT(id) AS paling_produktif
FROM directors
JOIN movies_directors ON director_id = directors.id
GROUP BY id
ORDER BY paling_produktif DESC
LIMIT 1


SELECT year, COUNT(year) AS tahun_tersibuk
FROM movies 
GROUP BY year
ORDER BY tahun_tersibuk DESC
LIMIT 1


SELECT name, string_agg(genre, ', ') AS movies_genres
FROM movies 
JOIN movies_genres ON movies_genres.movie_id = movies.id
GROUP BY movies.name
ORDER BY movies.name;
