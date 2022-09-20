    select e1.employee_id, e1.first_name, e1.last_name, 
           e1.department_id, e1.salary, e3.next_sal, e2.avg_sal
    from employees e1,
        (select department_id, round(avg(salary),2) as avg_sal from employees
         group by department_id) e2,
        (select employee_id, salary next_sal from employees) e3
    where e1.department_id = e2.department_id(+)
    and e1.employee_id+1 = e3.employee_id(+)
    order by e1.employee_id;
     
    select employee_id, first_name, last_name, department_id, salary, 
           lead(salary,1) over (order by employee_id) next_sal,
           round(avg(salary) over (partition by department_id),2) as avg_sal
    from employees
    order by employee_id;
