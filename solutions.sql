--SECTION 1 PERSON
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name varchar(130),
  age int,
  height decimal,
  city varchar(130),
  favorite_color varchar(130)
  );

  INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Geralt of rivia', 300, 350.5, 'Kaer Mohern', 'black'),
('Brandi Leavitt', 34, 301.3, 'Heber', 'blue'),
('Conner Murphy', 25, 325, 'Boston','orange'),
('Kal El', 20, 353.2, 'Smallville', 'red'),
('Ryan Leavitt', 35, 413.31, 'Laie', 'green');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age >= 20;

SELECT * FROM person
WHERE age = 18

SELECT * FROM person
  WHERE age < 20 OR age > 30;

  SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red'

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');

--SECTION 2 ORDERS
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(130),
  product_price DECIMAL,
  quantity INT
  );

  INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(13, 'preworkout', 29.99, 2),
(13, 'protein', 50, 3),
(3, 'dr.pepper', 3, 2),
(3, 'resistance bands', 28.50, 1),
(3, 'fat burner', 35.75, 3);

SELECT * FROM orders

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 13;

--SECTION 3 ARTISTS
INSERT INTO artist
(name)
VALUES
('bring me the horizon'),
('fozzy'),
('aad1ction');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

--SECTION 4 EMPLOYEE
SELECT * FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE last_name = 'Edwards' AND first_name = 'Nancy';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(city = 'Lethbridge') FROM employee;

--SECTION 5 INVOICE
SELECT COUNT(billing_country = 'USA') FROM invoice;

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total >= 5;

SELECT COUNT(total <= 5) FROM invoice;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;