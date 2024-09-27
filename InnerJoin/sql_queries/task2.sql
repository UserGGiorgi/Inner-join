 Select 
 product.id as id ,
 product_title.title as title,
 product_category.name as category,
 product.price as price 
 From product
 INNER JOIN product_title
 on product.product_title_id = product_title.id
  join product_category
 on product_title.product_category_id = product_category.id
 order by category ASC, title ASC;
