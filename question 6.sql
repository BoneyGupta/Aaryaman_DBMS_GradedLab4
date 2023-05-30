select c.cat_id as category_id,c.cat_name as name, p2.pro_name as product_name, sp2.supp_price
from 
category c inner join product p2 on c.cat_id=p2.cat_id 
inner join supplier_pricing sp2 on p2.pro_id=sp2.pro_id
inner join
(select distinct p.cat_id,min(sp.supp_price) as price
from product p inner join supplier_pricing sp
on p.pro_id=sp.pro_id
group by p.cat_id) as psp on c.cat_id=psp.cat_id 

where sp2.supp_price=psp.price
order by c.cat_id;
;