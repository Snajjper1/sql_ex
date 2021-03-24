-- 1. Write a query to display each customer’s name (as “Customer Name”) alongside the name of the employee who is 
-- responsible for that customer’s orders. The employee name should be in a single “Sales Rep” column formatted as “lastName, firstName”. 
-- The output should be sorted alphabetically by customer name.

SELECT 
  c.customerName AS `Customer Name`, 
  CONCAT(e.lastName, ' ', e.firstName) AS `Sales Rep` 
FROM
  customers AS c 
JOIN 
  employees AS e 
ON c.salesRepEmployeeNumber=e.employeeNumber 
ORDER BY customerName;

-- 2. Determine which products are most popular with our customers. For each product, list the total quantity ordered 
-- along with the total sale generated (total quantity ordered * priceEach) for that product. The column headers should 
-- be “Product Name”, “Total # Ordered” and “Total Sale”. List the products by Total Sale descending.

SELECT 
  p.productName AS 'Product Name', 
  o.quantityOrdered AS 'Total # Ordered', 
  (o.quantityOrdered * o.priceEach) AS 'Total Sale' 
FROM 
  products AS p 
JOIN 
  orderdetails AS o ON p.productCode=o.productCode 
ORDER BY  (o.quantityOrdered * o.priceEach) DESC;

-- 3. Write a query which lists order status and the # of orders with that status. Column headers should be “Order Status” 
-- and “# Orders”. Sort alphabetically by status.

SELECT
	 o.`status` AS 'Order Status',
	 d.quantityOrdered AS '# Orders'
FROM
	 orders AS o
JOIN
	orderdetails AS d ON o.orderNumber=d.orderNumber
GROUP BY o.`status`
ORDER BY o.`status`;

-- 4. Write a query to list, for each product line, the total # of products sold from that product line. The first column 
-- should be “Product Line” and the second should be “# Sold”. Order by the second column descending.


