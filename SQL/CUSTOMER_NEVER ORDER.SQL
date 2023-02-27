--Input: 
--Customers table:
--+----+-------+
--| id | name  |
--+----+-------+
--| 1  | Joe   |
--| 2  | Henry |
--| 3  | Sam   |
--| 4  | Max   |
--+----+-------+
--Orders table:
--+----+------------+
--| id | customerId |
--+----+------------+
--| 1  | 3          |
--| 2  | 1          |
--+----+------------+
--Output: 
--+-----------+
--| Customers |
--+-----------+
--| Henry     |
--| Max       |
--+-----------+



select
    Name as Customers
from
    Customers
where
    Id
not in(
    select CustomerId from Orders
);
