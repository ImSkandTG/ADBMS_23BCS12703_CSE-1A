create table employee(
emp_id int primary key,
emp_name varchar(50),
emp_add varchar(100)
);
insert into employee (emp_id, emp_name, emp_add) values
(12703, 'Skand', 'Bihar');
create or replace function tf_trigfunc() 
returns trigger 
language plpgsql
as 
$$
begin
if tg_op = 'INSERT' then 
raise notice 'INSERT OPERATION PERFORMED';
return new;
elsif tg_op = 'DELETE' then 
raise notice 'DELETE OPERATION PERFORMED';
return new;
elsif tg_op = 'UPDATE' then 
raise notice 'UPDATE OPERATION PERFORMED';
return old;
end if;
end;
$$;
create trigger tr_trigemp
after insert or delete or update 
on employee
for each row 
execute function tf_trigfunc();
