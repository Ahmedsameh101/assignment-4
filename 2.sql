SELECT DISTINCT orderNumber
FROM orderdetails
WHERE productCode LIKE 'S18%'
AND priceEach > 100;

SELECT * FROM payments
WHERE DAY(paymentDate) = 5 
OR DAY(paymentDate) = 6;

SELECT creditLimit
FROM customers
WHERE country = 'USA'
AND phone LIKE '%5555%'
ORDER BY creditLimit DESC
LIMIT 4, 1;

SELECT 
    employees.firstName,
    employees.lastName,
    offices.officeCode,
    offices.city
FROM employees 
INNER JOIN offices 
ON employees.officeCode = offices.officeCode;

SELECT
    employees.firstName,
    employees.lastName,
    offices.officeCode,
    offices.city
FROM employees 
INNER JOIN offices 
ON employees.officeCode = offices.officeCode
WHERE employees.officeCode IN ('4', '6');