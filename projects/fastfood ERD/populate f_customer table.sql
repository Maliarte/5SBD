--Populate f_customer table
INSERT INTO f_customers(id,first_name,last_name,address,city,state,zip,phone_number)
VALUES(123,'Cole','Bee','123 Main Street','Orlando','FL',32838,'4075558234');
INSERT INTO f_customers(id,first_name,last_name,address,city,state,zip,phone_number)
VALUES(456,'Zoe','Twee','1009 Oliver Avenue','Boston','MA',12889,'7098675309');
--Populate f_promotional_menus table
INSERT INTO f_promotional_menus(code,name,start_date,end_date,give_away)
VALUES('100','Back to School',TO_DATE('09-01-2004','mm-dd-yyyy'),TO_DATE('09-30-2004','mm-dd-yyyy'),'ballpen and highlighter');
INSERT INTO f_promotional_menus(code,name,start_date,end_date,give_away)
VALUES('110','Valentines Special',TO_DATE('02-10-2004','mm-dd-yyyy'),TO_DATE('02-15-2004','mm-dd-yyyy'),'small box of chocolates');
--Populate f_regular_menus table
INSERT INTO f_regular_menus(code,type,hours_served)
VALUES('10','Breakfast','6-11am');
INSERT INTO f_regular_menus(code,type,hours_served)
VALUES('20','Lunch/Dinner','11-9pm');
--Populate f_food_items table
INSERT INTO f_food_items(food_item_number,description,price,regular_code,promo_code)
VALUES(90,'Fries',1.09,'20',NULL);
INSERT INTO f_food_items(food_item_number,description,price,regular_code,promo_code)
VALUES(93,'Strawberry Shake',3.59,NULL,'110');
--Populate f_staffs table
INSERT INTO f_staffs(id,first_name,last_name,birthdate,salary,overtime_rate,training,staff_type,manager_id,manager_budget,manager_target)
VALUES(12,'Sue','Doe',TO_DATE('07-01-1980','mm-dd-yyyy'),6.75,10.25,NULL,'Order Taker',19,NULL,NULL);
INSERT INTO f_staffs(id,first_name,last_name,birthdate,salary,overtime_rate,training,staff_type,manager_id,manager_budget,manager_target)
VALUES(9,'Bob','Miller',TO_DATE('03-19-1979','mm-dd-yyyy'),10,NULL,'Grill','Cook',19,NULL,NULL);
INSERT INTO f_staffs(id,first_name,last_name,birthdate,salary,overtime_rate,training,staff_type,manager_id,manager_budget,manager_target)
VALUES(19,'Monique','Tuttle',TO_DATE('03-30-1969','mm-dd-yyyy'),60,NULL,NULL,'Manager',NULL,50000,70000);
--Populate f_orders table
INSERT INTO f_orders(order_number,order_date,order_total,cust_id,staff_id)
VALUES(5678,TO_DATE('12-10-2002','mm-dd-yyyy'),103.02,123,12);
--Populate f_order_lines table
INSERT INTO f_order_lines(order_number,food_item_number,quantity)
VALUES(5678,90,2);
--Populate f_shifts table
INSERT INTO f_shifts(code,description)
VALUES(1,'8am to 12pm');
INSERT INTO f_shifts(code,description)
VALUES(2,'6pm to 10pm');
--Populate f_shift_assignments table
INSERT INTO f_shift_assignments(code,id,shift_assign_date)
VALUES(1,12,TO_DATE('05-06-2004','mm-dd-yyyy'));