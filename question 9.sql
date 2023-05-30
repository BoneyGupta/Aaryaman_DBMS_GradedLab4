DELIMITER //
create  procedure GetSupplierRating()

Begin
select distinct s.supp_id as `supplier id`,s.supp_name as name,avg(r.rat_ratstars) as rating,
CASE
	WHEN  avg(r.rat_ratstars) = 5 THEN 'Excellent Service'
	WHEN  avg(r.rat_ratstars) > 4 THEN 'Good Service'    
	WHEN  avg(r.rat_ratstars) > 2 THEN 'Average Service'    
    ELSE 'Poor Service'
END As 'TypeOfService'

from supplier s
inner join supplier_pricing sp on s.supp_id=sp.supp_id
inner join `order` o on sp.pricing_id= o.pricing_id
inner join rating r on r.ord_id=o.ord_id
group by s.supp_id
order by s.supp_id;

end //


