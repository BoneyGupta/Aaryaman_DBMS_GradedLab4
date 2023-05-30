select p.PRO_NAME as `product name`, o.*
from `order` o 
	inner join supplier_pricing s  on o.pricing_id=s.pricing_id
    inner join product p on s.pro_id=p.PRO_ID
where o.CUS_ID=2;