ALTER TABLE  "DEPARTMENTS" ENABLE CONSTRAINT "DEPT_MGR_FK";

CREATE OR REPLACE FORCE VIEW  "EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") 
	AS SELECT
		e.employee_id, e.job_id, e.manager_id, e.department_id,
		d.location_id,
		l.country_id,
		e.first_name, e.last_name, e.salary, e.commission_pct,
		d.department_name,
		j.job_title,
		l.city, l.state_province,
		c.country_name,
		r.region_name
    FROM
        employees e,
        departments d,
        jobs j,
        locations l,
        countries c,
        regions r
    WHERE
        e.department_id = d.department_id
        AND d.location_id = l.location_id
        AND l.country_id = c.country_id
        AND c.region_id = r.region_id
        AND j.job_id = e.job_id
    WITH READ ONLY;
	
-- Drop sequences if they exist	
DROP SEQUENCE "DEPARTMENTS_SEQ";
DROP SEQUENCE "EMPLOYEES_SEQ";
DROP SEQUENCE "LOCATIONS_SEQ";

--Create sequence for departments PK				
CREATE SEQUENCE "DEPARTMENTS_SEQ"  
	MINVALUE 1 
	MAXVALUE 9990 
	INCREMENT BY 10 
	START WITH 280 
	NOCACHE  NOORDER  NOCYCLE;

--Create sequence for employees PK	
CREATE SEQUENCE "EMPLOYEES_SEQ"  
	MINVALUE 1 
	MAXVALUE 9999999999999999999999999999 
	INCREMENT BY 1 
	START WITH 207 
	NOCACHE  NOORDER  NOCYCLE;

--Create sequence for locations PK	
CREATE SEQUENCE "LOCATIONS_SEQ"  
	MINVALUE 1 
	MAXVALUE 9900 
	INCREMENT BY 100 
	START WITH 3300 
	NOCACHE  NOORDER  NOCYCLE;