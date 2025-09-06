


-- QUESTION ONE 
-- Retrieve firstName, lastName, email, and officeCode of all employees.
-- INNER JOIN employees with offices using officeCode.


SELECT e.firstName, 
       e.lastName, 
       e.email, 
       e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;



-- QUESTION TWO 
-- Retrieve productName, productVendor, and productLine from products table.
-- LEFT JOIN products with productlines using productLine.


SELECT p.productName, 
       p.productVendor, 
       p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;



-- QUESTION THREE 
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- RIGHT JOIN customers with orders using customerNumber.


SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

