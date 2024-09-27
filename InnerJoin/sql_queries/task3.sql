 Select Distinct
 product_title.title as title,
 product.price as price 
 From product
 INNER JOIN product_title
 on product.product_title_id = product_title.id
  INNER JOIN order_details
 on product.id = order_details.product_id
 INNER JOIN customer_order
 on order_details.customer_order_ID = customer_order.id
 INNER JOIN customer
 on customer_order.customer_id = customer.person_id
 INNER JOIN person
 on person_id = person.id
 where person.birth_date BETWEEN '2000-01-01' AND '2010-12-31'
 order by title ASC, price ASC;