-- populate tabes
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(90,'The Celebrants Live in Concert','Old Town Records','1997');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(91,'Party Music for All Occasions','The Music Man','2000');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(92,'Back to the Shire','Middle Earth Records','2002');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(93,'Songs from My Childhood','Old Town Records','1999');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(94,'Carpe Diem','R & B Inc.','2000');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(95,'Here Comes the Bride','The Music Man','2001');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(96,'Graduation Songbook','Tunes Are Us','1998');
INSERT INTO d_cds(cd_number,title,producer,year)
VALUES(98,'Whirled Peas','Old Town Records','2004');

INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(5922,'Hiram','Peters',3715832249,'hpeters@yahoo.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(5857,'Serena','Jones',7035335900,'serena.jones@jones.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(6133,'Lauren','Vigil',4072220090,'lbv@lbv.net');

INSERT INTO d_packages(code,low_range,high_range)
VALUES(79,500,2500);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(87,2501,5000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(112,5001,10000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(200,10001,15000);

INSERT INTO d_themes(code,description)
VALUES(200,'Tropical');
INSERT INTO d_themes(code,description)
VALUES(220,'Carnival');
INSERT INTO d_themes(code,description)
VALUES(240,'Sixties');
INSERT INTO d_themes(code,description)
VALUES(110,'Classic');
INSERT INTO d_themes(code,description)
VALUES(198,'Mardi Gras');
INSERT INTO d_themes(code,description)
VALUES(454,'Eighties');
INSERT INTO d_themes(code,description)
VALUES(340,'Football');
INSERT INTO d_themes(code,description)
VALUES(502,'Fairy Tale');

INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(100,'Private Home','52 West End Drive, Los Angeles, CA 90210','0','Large kitchen, spacious lawn');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(105,'Private Home','123 Magnolia Road, Hudson, N.Y. 11220','0','3 level townhouse, speakers on all floors');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(101,'Private Home','4 Primrose Lane, Chevy Chase, MD 22127','0','Gazebo, multi-level deck');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(95,'School Hall','4 Mahogany Drive, Boston, MA 10010','75/hour','School closes at 10pm');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(99,'National Park','87 Park Avenue, San Diego, CA 28978','400/flat fee','Bring generators');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(220,'Hotel','200 Pennsylvania Ave, Washington D.C. 09002','300/per person','Classy affair, tight security, private entrance for vendors');

INSERT INTO d_events(client_number,id,name,event_date,description,cost,venue_id,package_code,theme_code)
VALUES(5922,100,'Peters Graduation',TO_DATE('05-14-2004','mm-dd-yyyy'),'Party for 200, red, white, blue motif',8000,100,112,200);
INSERT INTO d_events(client_number,id,name,event_date,description,cost,venue_id,package_code,theme_code)
VALUES(6133,105,'Vigil wedding',TO_DATE('04-28-2004','mm-dd-yyyy'),'Black tie at Four Season hotel',10000,220,200,200);

INSERT INTO d_partners(id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES(11,'Jennifer','cho','Weddings','All Types',NULL,33,'Wedding Coordinator');
INSERT INTO d_partners(id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES(22,'Jason','Tsang',NULL,'Hip Hop',NULL,33,'Disk Jockey');
INSERT INTO d_partners(id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES(33,'Allison','Plumb','Event Planning',NULL,300000,33,'Manager');

INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(11,105,TO_DATE('02-02-2004','mm-dd-yyyy'),'Visited');

INSERT INTO d_types(code,description)
VALUES(1,'Jazz');
INSERT INTO d_types(code,description)
VALUES(12,'Pop');
INSERT INTO d_types(code,description)
VALUES(40,'Reggae');
INSERT INTO d_types(code,description)
VALUES(88,'Country');
INSERT INTO d_types(code,description)
VALUES(77,'New Age');

INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(45,'Its Finally Over','5 min','The Hobbits',12);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(46,'Im Going to Miss My Teacher','2 min','Jane Pop',12);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(47,'Hurrah for Today','3 min','The Jubilant Trio',77);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(48,'Meet Me At the Altar','6 min','Bobby West',1);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(49,'Lets Celebrate','8 min','The Celebrants',77);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(50,'All These Years','10 min','Diana Crooner',88);

INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,45,'Play late');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,46,NULL);
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,47,'Play early');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,48,'Play after cake cutting');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,49,'Play first');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,47,'Play for the father');

INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(45,92,1);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(46,93,1);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(47,91,2);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(48,95,5);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(49,91,3);
