use sakila;
show tables;
#Ejercicio 3.1
SELECT title FROM film;
#Ejercicio 3.2
SELECT distinct release_year FROM film;
#Ejercicio 3.3
SELECT title FROM film WHERE rental_duratiON > 4;
#Ejercicio 3.4
SELECT customer_id,rental_id,amount, payment_date
FROM payment WHERE payment_date BETWEEN '2005-07-01' AND '2005-08-01';

#Ejercicio 4.1
SELECT count(customer_id) FROM customer;
#Ejercicio 4.2
SELECT count(*) FROM rental GROUP BY customer_id;
#ejercicio 4.3
SELECT customer_id,max(total) FROM (SELECT customer_id,count(*) AS total FROM rental GROUP BY customer_id) AS t1;
SELECT customer_id, total FROM (SELECT customer_id,count(*) AS total FROM rental GROUP BY customer_id) AS t1 ORDER BY total DESC LIMIT 1;
#Muestra el usuario que más a arrendado.
#Ejercicio 4.4
#Ejercicio 4.5
SELECT staff_id,count(*) FROM payment GROUP BY(staff_id); 
#Ejercicio 4.6
SELECT staff.first_name,staff.last_name, count(*) AS amount FROM payment INNER JOIN staff on  payment.staff_id=staff.staff_id where payment_date BETWEEN 
'2005-08-23' AND '2005-08-24' GROUP BY payment.staff_id ORDER BY amount desc limit 1;
#Ejercicio 5.1
SELECT film.title,language.name FROM film INNER JOIN language ON film.language_id=language.language_id;
#Ejercicio 5.2
SELECT customer.first_name, customer.last_name FROM film INNER JOIN inventory ON film.film_id=inventory.film_id 
INNER JOIN rental ON inventory.inventory_id=rental.inventory_id
INNER JOIN customer ON customer.customer_id = rental.customer_id
WHERE film.title='CHICAGO NORTH';
#Ejercicio 5.3
SELECT first_name,last_name, city FROM customer INNER JOIN address ON customer.address_id=address.address_id
INNER JOIN city ON city.city_id=address.city_id;

#Ejercicio 5.4
SELECT title, count(*) FROM rental INNER JOIN inventory ON rental.inventory_id=inventory.inventory_id
INNER JOIN film ON film.film_id=inventory.film_id group by film.film_id;
#Ejercicio 5.5
SELECT film.title, count(*) AS total FROM rental INNER JOIN inventory ON rental.inventory_id=inventory.inventory_id 
INNER JOIN film ON inventory.film_id=film.film_id GROUP BY film.film_id ORDER BY total DESC LIMIT 1 ;
#Ejercicio 5.6
SELECT first_name,last_name FROM rental INNER JOIN payment ON rental.rental_id=payment.payment_id 
INNER JOIN customer ON customer.customer_id=payment.customer_id WHERE payment.amount>10.00 ;