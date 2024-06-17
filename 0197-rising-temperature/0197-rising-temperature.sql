select a.id
from weather a
    inner join weather b
    on a.recordDate = date_add(b.recordDate, interval 1 day)
 where a.temperature > b.temperature