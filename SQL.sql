use e_commerce;


-- 1st KPI
-- Weekday v/s Weekend Payment Statistics

-- 1) Total Orders: Weekday v/s Weekend

select 
case when dayofweek(o.order_purchase_timestamp) in (1,7) then "Weekend"
else "Weekday" 
end as "Day",
count(order_id)
as "Total Orders"
from orders_dataset as o
group by case when dayofweek(o.order_purchase_timestamp) in (1,7) then "Weekend"
else "Weekday" 
end;

-- 2) Average Payment Value: Weekday v/s Weekend

select 
case when dayofweek(o.order_purchase_timestamp) in (1,7) then "Weekend"
else "Weekday" 
end as "Day",
concat("R$ ", format(avg(p.payment_value), 0))
as "Average Payment Value"
from orders_dataset as o
join payments_dataset as p
on o.order_id = p.order_id
group by case when dayofweek(o.order_purchase_timestamp) in (1,7) then "Weekend"
else "Weekday" 
end;


-- 2nd KPI
-- Total Number of Orders with Review Score 5 and Payment Type as Credit Card

select 
r.review_score
as "Review Score",
p.payment_type
as "Payment Type",
count(r.order_id)
as "Total Number of Orders"
from reviews_dataset as r 
join payments_dataset as p
on r.order_id = p.order_id
where p.payment_type = "Credit_Card"
and r.review_score = 5
group by r.review_score
order by r.review_score desc;


-- 3rd KPI
-- Average Number of Days taken for Order Delivered for Pet Shop

select
round(avg(datediff(o.order_delivered_customer_date, o.order_purchase_timestamp)), 0)
as "Average Number of Days Taken",
p.product_category_name
as "Product Category Name"
from items_dataset as i
join products_dataset as p
on i.product_id = p.product_id
join orders_dataset as o 
on i.order_id = o.order_id
where product_category_name = "pet_shop";


-- 4th KPI
-- Average Price and Payment Values from customers of Sao Paulo City

select
c.customer_city 
as "Customer City",
concat("R$ ", round(avg(i.price), 0))
as "Average Price",
concat("R$", round(avg(p.payment_value), 0))
as "Average Payment Value"
from orders_dataset as o
join customers_dataset as c
on o.customer_id = c.customer_id
join items_dataset as i
on o.order_id = i.order_id
join payments_dataset as p
on o.order_id = p.order_id
where customer_city = "sao paulo";


-- 5th KPI
-- Relationship between Shipping days v/s Review Score

select
r.review_score 
as "Review Score",
round(avg(datediff(o.order_delivered_customer_date, o.order_purchase_timestamp)), 0)
as "Shipping Days"
from orders_dataset as o 
join reviews_dataset as r 
on o.order_id = r.order_id
group by r.review_score
order by r.review_score desc;


-- 6th KPI
-- Most Used Payment Option

select
payment_type
as "Payment Type",
count(order_id)
as "Number of Orders"
from payments_dataset 
group by payment_type;


-- 7th KPI
-- Number of Orders & Customers Yearly

select
year(order_purchase_timestamp)
as "Year",
count(order_id)
as "Number of Orders"
from orders_dataset
group by year(order_purchase_timestamp)
order by year(order_purchase_timestamp) desc;


-- 8th KPI
-- Profit of Top 5 Categories

select
p.product_category_name 
as "Top 5 Categories",
concat("R$ ", round((sum(pa.payment_value)-sum(i.price))/1000), "K")
as "Profit"
from items_dataset as i
join products_dataset as p
on i.product_id = p.product_id
join payments_dataset as pa
on i.order_id = pa.order_id
group by p.product_category_name
order by round((sum(pa.payment_value)-sum(i.price))) desc
limit 5;


-- 9th KPI
-- Profit of Bottom 5 Categories

select
p.product_category_name 
as "Bottom 5 Categories",
concat("R$ ", round((sum(pa.payment_value)-sum(i.price))))
as "Profit"
from items_dataset as i
join products_dataset as p
on i.product_id = p.product_id
join payments_dataset as pa
on i.order_id = pa.order_id
group by p.product_category_name
order by round((sum(pa.payment_value)-sum(i.price))) asc
limit 5;


-- 10th KPI
-- Customer Acquisition

select
customer_city
as "Customer City",
count(customer_id)
as "Total Number of Customers"
from customers_dataset
group by customer_city
order by count(customer_id) desc;


-- 11th KPI
-- Most 5 Star Reviewed Products

select
p.product_category_name
as "Category Name",
count(case when r.review_score = 5 then 1 end)
as "Number of 5 Stars Ratings"
from items_dataset as i
join products_dataset as p 
on i.product_id = p.product_id
join reviews_dataset as r
on i.order_id = r.order_id
group by p.product_category_name
order by count(case when r.review_score = 5 then 1 end) desc;


-- 12th KPI
-- Most 1 Star Reviewed Product

select
p.product_category_name
as "Category Name",
count(case when r.review_score = 1 then 1 end)
as "Number of 1 Star Ratings"
from items_dataset as i
join products_dataset as p 
on i.product_id = p.product_id
join reviews_dataset as r
on i.order_id = r.order_id
group by p.product_category_name
order by count(case when r.review_score = 1 then 1 end) asc;