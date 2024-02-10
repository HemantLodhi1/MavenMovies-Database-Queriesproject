--5. Find the total number of films available in each category, and list the categories in descending order of film count.
SELECT
c.name AS category_name,
COUNT(f.film_id) AS film_count
FROM category AS c
LEFT JOIN film_category AS fc ON c.category_id = fc.category_id
LEFT JOIN film AS f ON fc.film_id = f.film_id
GROUP BY c.name
ORDER BY film_count DESC;