# 1661
select machine_id, round(avg(processing_time),3) as processing_time
from (
    select machine_id, process_id, 
       min(case when (activity_type = 'end') then timestamp END) - 
       min(case when (activity_type = 'start') then timestamp END) as processing_time
    from activity
    group by machine_id, process_id
) as subquery
group by machine_id
