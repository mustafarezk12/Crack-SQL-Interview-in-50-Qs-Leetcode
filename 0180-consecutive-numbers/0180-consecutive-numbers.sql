# Write your MySQL query statement below
select distinct(num) as ConsecutiveNums
from(select id,num,
lag(num) over(order by id ) as prev,
lead(num) over(order by id ) as next 
from logs)sq
where sq.num=sq.prev and sq.prev = sq.next # so that i ensure in the condition number appears consecutively
