# 1193
select date_format(trans_date,'20%y-%m') as month,
    country,
    count(*) as trans_count,
    sum(if(state = 'approved',1,0)) as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state = 'approved',amount, 0)) as approved_total_amount
from transactions
GROUP BY country, month