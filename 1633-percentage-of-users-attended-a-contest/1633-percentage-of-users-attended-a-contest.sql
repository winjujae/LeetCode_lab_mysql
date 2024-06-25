# 1633
select re.contest_id, 
    round(count(us.user_id) * 100 / (select count(user_id) from users),2) as percentage
from users us
    right join register re
    on us.user_id = re.user_id
group by re.contest_id
order by percentage desc, re.contest_id asc