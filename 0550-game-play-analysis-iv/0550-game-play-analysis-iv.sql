# 550
with subq as (
    select *, DATEDIFF(event_date, MIN(event_date) OVER (PARTITION BY player_id)) = 1 AS temp
    from activity
    order by player_id, event_date
)

select round(SUM(temp) / COUNT(DISTINCT player_id) ,2) as fraction
from subq
