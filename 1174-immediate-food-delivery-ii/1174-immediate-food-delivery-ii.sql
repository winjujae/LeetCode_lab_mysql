# 1174
select round(avg(if(date(order_date) = date(customer_pref_delivery_date),1,0))*100,2) as immediate_percentage
from delivery
where (customer_id, order_date) in (
    select customer_id, min(order_date)
    from delivery
    group by customer_id
)