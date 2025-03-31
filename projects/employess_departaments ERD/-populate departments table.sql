--populate departments table
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(10,'Administration',200,1700);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(20,'Marketing',201,1800);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(50,'Shipping',124,1500);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(60,'IT',103,1400);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(80,'Sales',149,2500);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(90,'Executive',100,1700);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(110,'Accounting',205,1700);
INSERT INTO departments (department_id, department_name, manager_id, location_id)
Values(190,'Contracting',null,1700);

--populate jobs table
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_PRES','President',20000,40000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_VP','Administration Vice President',15000,30000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_ASST','Administration Assistant',3000,6000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AC_MGR','Accounting Manager',8200,16000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AC_ACCOUNT','Public Accountant',4200,9000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SA_MAN','Sales Manager',10000,20000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SA_REP','Sales Representative',6000,12000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('ST_MAN','Stock Manager',5500,8500);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('ST_CLERK','Stock Clerk',2000,5000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('IT_PROG','Programmer',4000,10000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('MK_MAN','Marketing Manager',9000,15000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('MK_REP','Marketing Representative',4000,9000);

--populate employees table
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(100,'Steven','King','SKING','515.123.4567',TO_DATE('1987-06-17','yyyy-mm-dd'),'AD_PRES',24000,null,null,90);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(101,'Neena','Kochhar','NKOCHHAR','515.123.4568',TO_DATE('1989-09-21','yyyy-mm-dd'),'AD_VP',17000,null,100,90 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(102,'Lex','De Haan','LDEHAAN','515.123.4569',TO_DATE('1993-01-13','yyyy-mm-dd'),'AD_VP',17000,null,100,90 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(200,'Jennifer','Whalen','JWHALEN','515.123.4444',TO_DATE('1987-09-17','yyyy-mm-dd'),'AD_ASST',4400,null,101,10 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(205,'Shelley','Higgins','SHIGGINS','515.123.8080',TO_DATE('1994-06-07','yyyy-mm-dd'),'AC_MGR',12000,null,101,110 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(206,'William','Gietz','WGIETZ','515.123.8181',TO_DATE('1994-06-07','yyyy-mm-dd'),'AC_ACCOUNT',8300,null,205,110 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id, bonus)
VALUES(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',TO_DATE('2000-01-29','yyyy-mm-dd'),'SA_MAN',10500,.2,100,80, '1500' );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id, bonus)
VALUES(174,'Ellen','Abel','EABEL','011.44.1644.429267',TO_DATE('1996-05-11','yyyy-mm-dd'),'SA_REP',11000,.3,149,80,'1700' );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id, bonus)
VALUES(176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265',TO_DATE('1998-03-24','yyyy-mm-dd'),'SA_REP',8600,.2,149,80,'1250' );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(178,'Kimberely','Grant','KGRANT','011.44.1644.429263',TO_DATE('1999-05-24','yyyy-mm-dd'),'SA_REP',7000,.15,149,null );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(124,'Kevin','Mourgos','KMOURGOS','650.123.5234',TO_DATE('1999-11-16','yyyy-mm-dd'),'ST_MAN',5800,null,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(141,'Trenna','Rajs','TRAJS','650.121.8009',TO_DATE('1995-10-17','yyyy-mm-dd'),'ST_CLERK',3500,null,124,50 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(142,'Curtis','Davies','CDAVIES','650.121.2994',TO_DATE('1997-01-29','yyyy-mm-dd'),'ST_CLERK',3100,null,124,50 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(143,'Randall','Matos','RMATOS','650.121.2874',TO_DATE('1998-03-15','yyyy-mm-dd'),'ST_CLERK',2600,null,124,50 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(144,'Peter','Vargas','PVARGAS','650.121.2004',TO_DATE('1998-07-09','yyyy-mm-dd'),'ST_CLERK',2500,null,124,50 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(103,'Alexander','Hunold','AHUNOLD','590.423.4567',TO_DATE('1990-01-03','yyyy-mm-dd'),'IT_PROG',9000,null,102,60 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(104,'Bruce','Ernst','BERNST','590.423.4568',TO_DATE('1991-05-21','yyyy-mm-dd'),'IT_PROG',6000,null,103,60 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(107,'Diana','Lorentz','DLORENTZ','590.423.5567',TO_DATE('1999-02-07','yyyy-mm-dd'),'IT_PROG',4200,null,103,60 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(201,'Michael','Hartstein','MHARTSTE','515.123.5555',TO_DATE('1996-02-17','yyyy-mm-dd'),'MK_MAN',13000,null,100,20 );
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(202,'Pat','Fay','PFAY','603.123.6666',TO_DATE('1997-08-17','yyyy-mm-dd'),'MK_REP',6000,null,201,20 );


--populate job_history table
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(200,TO_DATE('09-17-1987','mm-dd-yyyy'),TO_DATE('06-17-1993','mm-dd-yyyy'),'AD_ASST',90 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(101,TO_DATE('10-28-1993','mm-dd-yyyy'),TO_DATE('03-15-1997','mm-dd-yyyy'),'AC_MGR',110 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(200,TO_DATE('07-01-1994','mm-dd-yyyy'),TO_DATE('12-31-1998','mm-dd-yyyy'),'AC_ACCOUNT',90 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(101,TO_DATE('09-21-1989','mm-dd-yyyy'),TO_DATE('10-27-1993','mm-dd-yyyy'),'AC_ACCOUNT',110 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(176,TO_DATE('01-01-1999','mm-dd-yyyy'),TO_DATE('12-31-1999','mm-dd-yyyy'),'SA_MAN',80 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(176,TO_DATE('03-24-1998','mm-dd-yyyy'),TO_DATE('12-31-1998','mm-dd-yyyy'),'SA_REP',80 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(122,TO_DATE('01-01-1999','mm-dd-yyyy'),TO_DATE('12-31-1999','mm-dd-yyyy'),'ST_CLERK',50 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(114,TO_DATE('03-24-1998','mm-dd-yyyy'),TO_DATE('12-31-1999','mm-dd-yyyy'),'ST_CLERK',50 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(102,TO_DATE('01-13-1993','mm-dd-yyyy'),TO_DATE('07-24-1998','mm-dd-yyyy'),'IT_PROG',60 );
INSERT INTO job_history(employee_id,start_date,end_date,job_id,department_id)
VALUES(201,TO_DATE('02-17-1996','mm-dd-yyyy'),TO_DATE('12-19-1999','mm-dd-yyyy'),'MK_REP',20 );

--populate job_grades table
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('A',1000,2999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('B',3000,5999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('C',6000,9999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('D',10000,14999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('E',15000,24999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('F',25000,40000);