select o.order_id,c.customer_name
from customers as c right join orders as o
on c.customer_id = o.customer_id

-- Find orders that do not belong to any customer.
select o.order_id,o.product
from customers as c right join orders as o
on o.customer_id = c.customer_id
where c.customer_id is null