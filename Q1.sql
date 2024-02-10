use mavenmovies;
--1.Find the titles of movies except starting with a that have been rented more than 30 times, and sort them in desc order.
SELECT f.title
FROM film AS f
INNER JOIN inventory AS i ON f.film_id = i.film_id
INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY f.title
HAVING COUNT(r.rental_id) > 30 AND NOT f.title LIKE 'A%'
ORDER BY COUNT(r.rental_id) DESC; 