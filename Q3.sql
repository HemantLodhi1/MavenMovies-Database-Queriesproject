--3. Find the titles of movies in the 'horror' category and sort them based on the last character of the title
SELECT title
FROM film AS f
INNER JOIN  film_category AS fc ON f.film_id = fc.film_id
INNER JOIN category AS c ON fc.category_id = c.category_id
WHERE c.name = 'Horror'
ORDER BY SUBSTRING(title, LENGTH(title), 1);