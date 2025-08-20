-- Assignment 3

-- 3.1

CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);


-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM',60000,2),
(4,'MAX',90000,1);

select D.dept_name,E.name,E.salary 
from employee as E
inner join
department as D
on D.id = E.department_id
WHERE E.salary in (
    select MAX(E2.salary)
    from employee as E2
    WHERE E2.department_id = E.department_id
)

-- 3.2

create table emp1(
    id int primary key,
    Ename varchar(20),
    salary int
);
create table emp2(
    id int primary key,
    Ename varchar(20),
    salary int
);
-- Insert into emp1
INSERT INTO emp1 (id, Ename, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 55000),
(4, 'David', 70000),
(5, 'Eva', 65000);

-- Insert into emp2
INSERT INTO emp2 (id, Ename, salary) VALUES
(2, 'Bob', 62000),        -- Same ID & Name as emp1, salary different
(3, 'Charlie', 58000),    -- Same ID & Name, salary different
(5, 'Eva', 66000),        -- Same ID & Name, salary different
(6, 'Frank', 72000),
(7, 'Grace', 68000);

select id,Ename,min(salary) as salary
from
(
select * from emp1
union all
select* from emp2 
) as INTERMEDIATE_RESULT
group by id,Ename;
