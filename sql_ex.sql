-- 1. Write a query to display the name, product line, and buy price of all products. 
-- The output columns should display as “Name”, “Product Line”, and “Buy Price”. 
-- The output should display the most expensive items first.

select productName as Name, productLine as `Product Line`, buyPrice as `Buy Price` from products order by buyPrice desc;

-- 2. Write a query to display the first name, last name, and city for all customers from Germany. 
-- Columns should display as “First Name”, “Last Name”, and “City”. 
-- The output should be sorted by the customer’s last name (ascending).

select contactFirstName as `First Name`, contactLastName as `Last Name`, city as `City` from customers where country='Germany';

-- 3. Write a query to display each of the unique values of the status field in the orders table. 
-- The output should be sorted alphabetically increasing. Hint: the output should show exactly 6 rows.

select distinct status as `Status` from orders order by status;

-- 4. Select all fields from the payments table for payments made on or after January 1, 2005. 
-- Output should be sorted by increasing payment date.