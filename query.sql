USE demo;
SELECT *
FROM customers;

SELECT customerName, contactLastName, contactFirstName, phone, city
FROM customers;

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
WHERE contactFirstName = 'Peter'
  AND city = 'Melbourne';

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
WHERE contactFirstName LIKE '%A%';

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
WHERE contactFirstName BETWEEN 103 AND 125;

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
WHERE city IN ('USA', 'France', 'Spain');

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
WHERE country = 'USA'
   OR country = 'France';

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
ORDER BY contactFirstName;

SELECT customerNumber, contactLastName, contactFirstName, phone, city
FROM customers
ORDER BY contactFirstName DESC
LIMIT 10;

SELECT COUNT(country) AS 'Số khách hàng số ở France'
FROM customers
WHERE country = 'France';

INSERT INTO customers (customerNumber, customerName, contactFirstName, contactLastName, phone, addressLine1, city,
                       country)
VALUES (500, 'AgileLead', 'Lan', 'Tran', '0978822683', 'Ham Nghi', 'Ha Noi', 'Viet Nam');

UPDATE customers
SET customerName = 'Baane Mini Imports'
WHERE customernumber = 103;

DELETE
FROM customers
WHERE city = 'Nantes'
