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

#select a.machine_id, round(avg(subqueryA.timestamp - a.timestamp),3) as processing_time
#from activity as a
#    inner join (select * from activity
#                    where activity_type = 'end'
#                    group by machine_id, process_id
#                ) as subqueryA
#    on a.machine_id = subqueryA.machine_id
#where a.activity_type = 'start'
#group by machine_id