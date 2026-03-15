select c.customer_name,o.product 
from customers as c left join orders as o
on c.customer_id = o.customer_id 

select c.customer_name 
from customers as c left join orders as o
on c.customer_id = o.customer_id
where o.customer_id is null

select  c.customer_name 
from customers as c left join orders as o
on c.customer_id = o.customer_id 
where o.product is null

select p.product_name,o.order_id
from products as p left join orders as o
on p.product_name = o.product

select p.product_name , c.customer_name 
from products as p left join orders as o
on p.product_name = o.product 
left join customers as c
on o.customer_id = c.customer_id

-- show all the customer and total number of orders
select c.customer_name,count(o.customer_id) 
from customers as c left join orders as o
on c.customer_id = o.customer_id
group by c.customer_id

-- customers and total amount spent
select c.customer_name,sum(o.amount) as total_spent
from customers as c left join orders as o 
on c.customer_id = o.customer_id
group by c.customer_id 

-- show  product_name | price | customer_name
select p.product_name,p.price,c.customer_name
from products as p left join orders as o 
on p.product_name = o.product 
left join customers as c
on c.customer_id = o.customer_id

-- Find cities where customers have not placed any orders.
select c.city
from customers as c left join orders as o
on c.customer_id = o.customer_id 
where o.product is null

-- Find customers who never placed any orders.
select c.customer_name
from customers as c left join orders as o
on c.customer_id = o.customer_id
where o.product is null

-- Find products that were never ordered by a valid customer.
select p.product_name
from  products as p left join orders as o 
on  o.product = p.product_name
left join customers as c
on c.customer_id = o.customer_id 
where c.customer_id is null

-- Find orders that do not belong to any customer.
select  o.order_id,o.product
from orders as o left join customers as c
on o.customer_id = c.customer_id
where c.customer_name is null

-- Show customers and how many orders they placed.
select c.customer_name,count(o.customer_id)
from customers as c left join orders as o 
on c.customer_id = o.customer_id
group by c.customer_name

-- Show cities and total orders placed by customers in that city.
select c.city,count(o.customer_id)
from customers as c left join orders as o
on c.customer_id = o.customer_id
group by c.customer_id

-- Show products and how many times each product was ordered.
select p.product_name , count(o.product)
from products as p left join orders as o
on p.product_name = o.product 
group by p.product_name

-- Show customers with product and price they ordered.
select c.customer_name, o.product ,p.price
from customers as c left join orders as o 
on c.customer_id = o.customer_id left join  products as p 
on p.product_name = o.product  

-- Show products, price, and the customer who ordered them.
select p.product_name,p.price,c.customer_name 
from products as p left join orders as o 
on p.product_name = o.product left join customers as c 
on c.customer_id = o.customer_id

-- Find the city with the highest number of orders.
select c.city, count(o.product) as total_orders
from customers as c left join orders as o 
on c.customer_id = o.customer_id
group by c.city
order by total_orders desc
limit 1

-- Show customers and total amount they spent.
select c.customer_name,sum(o.amount) as total_spent
from customers as c left join orders as o 
on c.customer_id = o.customer_id
group by c.customer_name

select c.customer_name,count(o.product) as laptop_orders
from  customers as c left join orders as o 
on c.customer_id = o.customer_id AND o.product ='Laptop'
group by c.customer_name 
