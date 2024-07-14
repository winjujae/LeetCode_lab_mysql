# 1211
select a.query_name,round(sum(a.rating / a.position) / count(a.query_name),2) as quality,
    round(sum(if (b.rating is null,0,1)) / count(a.rating) * 100,2) as poor_query_percentage
from queries a
left join (select *
    from queries
    where rating < 3
    ) as b
on a.result = b.result
group by a.query_name
having a.query_name is not null