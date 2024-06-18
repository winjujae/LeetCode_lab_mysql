# 1075
select pj.project_id, round(avg(em.experience_years),2) as average_years
from project pj
    inner join employee em
    on pj.employee_id = em.employee_id
group by pj.project_id