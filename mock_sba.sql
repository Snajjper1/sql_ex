-- 1.Create a query to return all orders made by users with the first name of “Marion”

SELECT
  o.ORDER_ID, o.USER_ID, o.STORE_ID 
FROM
  ORDERS o
JOIN
  USERS u ON o.USER_ID = u.USER_ID 
WHERE FIRST_NAME='Marion';

-- 2.Create a query to select all users that have not made an order

