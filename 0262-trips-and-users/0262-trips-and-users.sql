# Write your MySQL query statement below
select request_at  as Day ,
round(sum(Status in ('cancelled_by_driver', 'cancelled_by_client'))/count(*),2) as 'Cancellation Rate'
from trips 
where 
client_id not in (select users_id from Users where banned = 'Yes' and Role = 'client' ) and 
Driver_Id not in (select Users_Id from Users where Banned ='Yes' and Role = 'driver') and 
request_at  between "2013-10-01" and "2013-10-03"
group by request_at 