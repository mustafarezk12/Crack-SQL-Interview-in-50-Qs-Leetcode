# Write your MySQL query statement below
delete  a
from person a
join person b
on a.email=b.email
where a.id > b.id
 