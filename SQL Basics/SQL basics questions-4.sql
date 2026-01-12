select * from customers
select * from Orders
select * from Products

-- 1) Identify pairs of customers who live in the same country
select x.customername, y.customername
from customers x join customers y on x.country = y.country and x.customerID <> y.customerID and x.customerID > y.customerID

--2 ) Find the customer who has spent the most on their orders
select customername from
(select customername, sum(price) [ammount spent], DENSE_RANK() over (order by sum(price) desc) [DR]
from customers c inner join 
orders o on c.customerid = o.customerid  inner join products p on o.productid = p.productid
group by customername) m where DR =1

-- 3) Find customers who have ordered more than one products
select customername, count(productID)
from customers c join orders o on c.customerid = o.customerid
group by customername
having count(productid)>1

-- 4) List all the products and their corresponding orders, using RIGHT join, including products that have never been ordered
select orderID, p.productid, productname
from orders o right join products p on o.productid = p.productid

-- 5) Retreive all orders placed by the customers from the USA
select OrderID
from customers c inner join orders o on c.customerid = o.customerid where country in ('USA')

-- 6) Find the names of customers who have ordered a product priced above $500
select distinct customername
from customers c inner join orders o on c.customerid = o.customerid inner join products p on p.productid = o.productid
where price > 500

-- 7) fidn the customer who have ordered the same product more than once
select distinct m.customername from
(select customername, productid, count(orderID)[count]
from customers c inner join orders o on c.customerid = o.customerid
group by customername, productid
having count(orderID)>1)m

