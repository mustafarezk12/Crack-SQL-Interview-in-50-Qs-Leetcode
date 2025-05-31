# Write your MySQL query statement below
select d.name  as Employee 
from Employee e 
join Employee d
on e.id = d.managerId   
where d.salary > e.salary 