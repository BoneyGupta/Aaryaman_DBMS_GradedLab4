select s.*
from supplier s inner join
(select distinct supp_id,count(pro_id) from supplier_pricing 
group by supp_id
having count(pro_id)>1) as aggr on s.supp_Id=aggr.supp_id;