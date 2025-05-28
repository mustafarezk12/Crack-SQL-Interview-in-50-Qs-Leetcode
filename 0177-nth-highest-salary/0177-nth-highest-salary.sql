CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    select distinct e.salary  as getNthHighestSalary
    from Employee e
    where N = (select count(distinct d.salary) 
    from Employee d 
    where e.salary  <= d.salary )
  );
END