# 570
select a.name
from employee as a
    left join (
        select *
        from employee
        group by managerId
        having count(managerId) >= 5
    ) as subq
    on a.id = subq.managerId
where subq.managerId IS NOT NULL;