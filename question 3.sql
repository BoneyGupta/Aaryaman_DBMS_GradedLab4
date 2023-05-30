select distinct CUS_GENDER, count(cus_id) from customer where cus_id in (
select cus_id from `order` where ord_amount>=3000
) group by cus_gender;