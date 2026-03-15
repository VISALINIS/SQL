select c.customer_name,o.product 
from customers as c inner join orders as o 
on c.customer_id = o.customer_id;

select c.customer_name,c.city,o.product
from customers as c inner join orders as o 
on c.customer_id = o.customer_id;

select customer_name , amount
from customers as c inner join orders as o
on c.customer_id = o.customer_id;

select c.customer_name,o.product,p.price
from customers as c inner join orders as o
on c.customer_id = o.customer_id
inner join products as p
on  o.product = p.product_name

select c.customer_name ,o.product,o.amount,p.price
from customers as c inner join orders as o
on c.customer_id = o.customer_id
inner join products as p 
on o.product = p.product_name

select c.customer_name ,o.product 
from customers as c inner join orders as o 
on c.customer_id = o.customer_id
where o.product = 'Laptop'

select c.customer_name,o.product
from customers as c inner join orders as o
on c.customer_id = o.customer_id

select c.customer_name,c.city,o.product
from customers as c inner join orders as o 
on c.customer_id = o.customer_id

select customer_name,amount 
from customers as c inner join orders as o 
on c.customer_id = o.customer_id

select customer_name,product,price
from customers as c inner join orders as o 
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name


select c.customer_name,c.city,o.product,p.price
from customers as c inner join orders as o 
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name

select c.customer_name,o.product,o.amount,p.price
from customers as c inner join orders as o 
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name

select c.customer_name ,o.product 
from customers as c inner join orders as o 
on c.customer_id = o.customer_id
where o.product = 'Laptop'

select c.customer_name,o.product,p.price
from customers as c inner join orders as o 
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name
where p.price>10000

select c.customer_name,c.city,o.product
from customers as c inner join orders as o 
on c.customer_id = o.customer_id
where city ='Chennai';

select c.customer_name,sum(o.amount) as total_amount
from customers as c inner join orders as o
on  c.customer_id = o.customer_id
group by o.customer_id

select c.customer_name,o.product,p.price
from customers as c inner join orders as o
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name
order by price desc
limit 1

select c.customer_name,sum(o.amount) as total_amount
from customers as c inner join orders as o
on c.customer_id = o.customer_id
group by customer_name 

select c.customer_name,o.product,o.amount,p.price,
(o.amount+p.price) as total_price
from customers as c inner join orders as o
on c.customer_id = o.customer_id inner join products as p
on o.product = p.product_name

select o.product,count(o.product)
from customers as c inner join orders as o
on c.customer_id = o.customer_id 
group by product 