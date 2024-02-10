--4. Retrieve the top 5 customers whose name starts with E and have made the highest number of rentals. Display their customer IDs and the total number of rentals they have made.
SELECT c.customer_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
COUNT(r.rental_id) AS total_rentals
FROM customer AS c
INNER JOIN rental AS r ON c.customer_id = r.customer_id
WHERE c.first_name LIKE 'E%'
GROUP BY c.customer_id
ORDER BY total_rentals DESC
LIMIT 5;