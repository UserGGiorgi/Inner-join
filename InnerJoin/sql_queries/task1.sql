 Select 
 product.id as id ,
 product_title.title as title,
 product.price as price 
 From product
 INNER JOIN product_title
 on product.product_title_id = product_title.id
 order by title ASC;
