/* 1.Pentru fiecare ora�, s� se afi�eze �ara �n care se afl� �i num�rul de angaja�i din cadrul s�u. */
--cata the cold nosed student, has a really icy nose

select l.COUNTRY_ID, count(e.employee_id) from locations l join departments d on l.LOCATION_ID=d.LOCATION_ID 
                                                    join employees e on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
                                                    group by l.COUNTRY_ID;
                                                    
--2 Care sunt primii 5 cel mai bine pl�ti�i angaja�i? 
select first_name, salary from employees where rownum <=5 order by salary DESC;

--3 S� se ob�in� num�rul de angaja�i care au mai avut cel pu�in trei job-uri, lu�ndu-se �n considerare �i job-ul curent. 
select e.employee_id from JOB_HISTORY j join employees e on j.EMPLOYEE_ID = e.EMPLOYEE_ID group by e.employee_id; --not done