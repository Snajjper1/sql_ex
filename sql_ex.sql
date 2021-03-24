-- 1. Write a query to display the name, product line, and buy price of all products. 
-- The output columns should display as “Name”, “Product Line”, and “Buy Price”. 
-- The output should display the most expensive items first.

select productName as Name, productLine as `Product Line`, buyPrice as `Buy Price` from products order by buyPrice desc;

-- 2. Write a query to display the first name, last name, and city for all customers from Germany. 
-- Columns should display as “First Name”, “Last Name”, and “City”. 
-- The output should be sorted by the customer’s last name (ascending).

