# 1068
select p.product_name, s.year, s.price
from product p
    inner join sales s on s.product_id = p.product_id

#select a.product_name, b.year, b.price
#from Product a
#right join Sales b
#on a.product_id = b.product_id