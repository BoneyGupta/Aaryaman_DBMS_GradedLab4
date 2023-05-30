select c.CUS_NAME,c.CUS_GENDER
from customer c
where cus_name like "A%" or cus_name like "%A";