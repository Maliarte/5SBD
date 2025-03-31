--populate regions table
INSERT INTO regions (region_id, region_name)
Values(1,'Europe');
INSERT INTO regions (region_id, region_name)
Values(2,'Americas');
INSERT INTO regions (region_id, region_name)
Values(3,'Asia');
INSERT INTO regions (region_id, region_name)
Values(4,'Middle East and Africa');

--populate countries table
INSERT INTO countries (country_id, country_name, region_id)
Values('CA','Canada',2);
INSERT INTO countries (country_id, country_name, region_id)
Values('DE','Germany',1);
INSERT INTO countries (country_id, country_name, region_id)
Values('UK','United Kingdom',1);
INSERT INTO countries (country_id, country_name, region_id)
Values('US','United States of America',2);

--populate locations table
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
Values(1800,'460 Bloor St. W.','ON M5S 1X8','Toronto','Ontario','CA');
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
Values(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
Values(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
Values(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
Values(1700,'2004 Charade Rd','98199','Seattle','Washington','US');
