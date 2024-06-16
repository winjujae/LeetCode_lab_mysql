# 1934
select si.user_id, 
    ifnull(round(sum(case co.action when 'confirmed' then 1 else 0 end) / count(co.user_id),2),0) as confirmation_rate
from signups as si
    left join confirmations as co
    on si.user_id = co.user_id
group by si.user_id
