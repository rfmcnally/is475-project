INSERT INTO ptblModel Values
('aaa201', 'Nissan Versa', 'Nissan Versa 4 Door', 568.85),
('bbb201', 'Nissan Ultima', 'Nissan Ultima 2 Door GTB', 678.75),
('ccc201', 'Ford Explorer', 'Ford Explorer 576 Wide', 486.97),
('ddd201', 'Toyota Camry', 'Toyota Camry Sports 2 Door', 598.50),
('eee201', 'Honda Civic', 'Honda Civic 398 Slim', 345.45),
('fff201', 'Toyota Hybrid', 'Toyota Hybrid 5 Sports', 894.988);
 
INSERT INTO ptblProduct VAlUES
('19029388-11', 'aaa201'),
('19029388-12', 'aaa201'),
('19029388-13', 'bbb201'),
('19029388-14', 'fff201'),
('19029388-15', 'ccc201'),
('19029388-16', 'aaa201'),
('19029388-17', 'aaa201'),
('19029388-18', 'ddd201'),
('19029388-19', 'ccc201'),
('19029388-20', 'aaa201'),
('19029388-21', 'aaa201'),
('19029388-22', 'ddd201');
 
INSERT INTO ptblCustomer VALUES
(0001, 'Riggs',  	'Evelyn', '666 Dark Kid Street', 'Sparks', 'NV', 89541, 'locatekit@gmail.com', 7753628954),
(0002, 'Hazelton',   'Blake', '4756 Minis Street', 'Columbus', 'OH', 51247, 'Topshop@gmail.com', 7059846578),
(0003, 'Allen',  	'Noel', '3562 Dist Drive', 'Denver', 'CO', 48576, 'thecollegebus@yahoo.com', 7035649876),
(0004, 'Walker', 	'Vance Martin', '3954 Discount Drive', 'Concord', 'CA', 21489, 'labassistant@gmail.com', 8947568563),
(0005, 'Kinney', 	'Deneece', '4835 Information Street', 'Portland', 'OR', 38956, 'software@unr.edu', 3957879375),
(0006, 'Bridges',	'Carol', '3756 Stirling Street', 'San Francisco', 'CA', 54877, 'yelp@yelp.com', 3957778965),
(0007, 'Kane',      	   'Sylvia', '3957 Tulip Street', 'Binghamton', 'NY', 39579, 'Kappalife@kappa.org', 9998758753),
(0008, 'Galloway',   'Odessa', '3957 Wall Street', 'Manhattan', 'NY', 54287, 'Convergent@kappa.com', 5479824487);
 
INSERT INTO ptblDistributor VALUES
(777780, 'Wallen Distributors', '3976 South Walker Street', 'Ithaca', 'NY', 33038, 'WallenDist@gmail.com', 5679875342),
(777781, 'Window Distributors', '3856 North Height Street', 'Amhert', 'MA', 39579, 'WindowDist@gmail.com', 5693832124);
 
INSERT INTO ptblUser VALUES
(4200, 'Gaby',   	'Murata', '38957 Network Street', 'New Bruns', 'NJ',58573, 'Hershon@gmail.com', 3435237877),
(4201, 'Tricia', 	'Chinchilla', '476 Wireless Street', 'Oxford', 'OH', 59987, 'Molly@gmail.com', 5455636543),
(4202, 'Vivian', 	'On', '49573 Driven Drive', 'San Diego', 'CA', 47376, 'Vivian@yahoo.com', 8989875433),
(4203, 'Maria',  	'Gigo', '39575 Spark Drive', 'Los Angelos', 'CA', 31854, 'MariaGigo@gmail.com', 4867385834),
(4204, 'Telp',   	'Po', '39857 Peak Street', 'Salem', 'OR', 21476, 'TelpP@unr.edu', 3740398573);
 
INSERT INTO ptblOther VALUES
(2300, 'Jenny',  	'Kot', '65 Trick Street', 'New Bruns', 'NV', 85541, 'Jamerson@gmail.com', 3573697877),
(2301, 'Rose',   	'Gaban', '487 Mccaran Street', 'Clevland', 'OH', 54447, 'Jager@gmail.com', 9057348746),
(2302, 'Mali',   	'Chowder', '957 Virginia Drive', 'Colorado Springs', 'CO', 47376, 'Vodkas@yahoo.com', 8763746353),
(2303, 'Farrah', 	'Saab', '9874 Plekin Drive', 'Los Angelos', 'CA', 21954, 'Smirnoff@gmail.com', 8476409275),
(2304, 'Kit', 'Kat', '8563 Weurid Street', 'Salem', 'OR', 56396, 'Lager@unr.edu', 3856989876);
 
INSERT INTO ptblEmployee VALUES
(221094, 'Olivia', 'Ho', 'Assembler'),
(221095, 'Ryan', 'McPoop', 'Manager'),
(221096, 'Kylie', 'Token', 'Supervisor'),
(221097, 'Jillian', 'Ehb', 'Assistant Manger');
 
INSERT INTO ptblComplaint VALUES
(01, 'Webform'),
(02, 'Phone'),
(03, 'Email'),
(04, 'Twitter'),
(05, 'Store');
 
INSERT INTO ptblProblem VALUES
(101, 'Inadequate finish- toy does not look good'),
(102, 'Inadequate operation- toy doe not operate correctly'),
(103, 'Poor operation, toy tips over during use'),
(104, 'Inadequate operation quality - toy broke during use'),
(105, 'Poor operation quality - toy hurt user'),
(106, 'Other');
 
INSERT INTO ptblTest VALUES
(310, 'Operational'),
(320, 'Physical'),
(330, 'Experimental'),
(340, 'Durability');
 
INSERT INTO ptblProblemReport VALUES
(789011, '19029388-11', 101, 01, 0003, null, null, null, null, '12-15-2014', 'It is screwed up.', 0, null, null),
(789012, '19029388-17', 101, 01, 0004, null, null, null, null, '12-17-2014', 'It broke on first use.', 0, null, null),
(789013, '19029388-19', 105, 03, null, null, 4201, null, null, '11-17-2013', 'It broke on second use.', 0, null, null),
(789014, '19029388-14', 105, 05,0005, null, null, null, null, '11-15-2013', 'It broke on first use.', 0, null, null),
(789015, '19029388-20', 106, 04, null, 777781, null, null, null, '9-16-2014', 'Missing front door.', 0, null, null),
(789016, '19029388-21', 101, 03, null, 777780, null, null, null, '10-19-2014', 'Tires are uneven', 0, null, '10-25-2014'),
(789017, '19029388-16', 103, 02, 0008, null, null, null, null, '7-12-2013', 'It broke on first use', 1, 'It broke it my hand.', '7-16-2013'),
(789018, '19029388-15', 102, 01, null, null, 4201, null, null, '06-23-2014', 'It is screwed up.', 0, null, '6-27-2014'),
(789019, '19029388-12', 103, 05, 0004, null, null, null, null, '03-15-2015', 'It broke on second use.', 0, null, '04-01-2015'),
(789020, '19029388-11', 104, 02, 0006, null, null, null, null, '04-25-2015', 'Missing front door.', 0, null, '04-28-2015');
 
INSERT INTO ptblTestReport VALUES
(1001, 789011, 310, 221094, '10-13-2014', 'Used computer simulation of vehicle with 40 pound rider 3
MPH; 5MPH; 10MPH; 15MPH test runs. Tried it on qualified
uneven terrain including potholes. Tried it on unqualified
terrain (sand).',
'Slight outside tilt; no tipping at any speed on qualified terrain.
Tipping occurs when vehicle is used on sand.',
'No problems with expected performance. Provide additional
documentation to Marketing about intended operating
environment for JCSUV7. Recommend inclusion of
additional information in operating manual stating: do not
operate on sand.', 0),

(1002, 789011, 310, 221094, '10-13-2014', 'Reran computer simulation of vehicle with 40 pound rider 3
MPH; 5MPH; 10MPH; 15MPH test runs. Tried it on qualified
uneven terrain including potholes. Tried it on unqualified
terrain (sand).',
'Slight outside tilt again; no tipping at any speed on qualified terrain.
Tipping occurs when vehicle is used on sand.',
'No problems with expected performance. Provide additional
documentation to Marketing about intended operating
environment for JCSUV7. Recommend inclusion of
additional information in operating manual stating: do not
operate on sand.', 0),
 
(1003, 789011, 320, 221096, '10-14-2014', 'Tried actual experimental environment
same as computer simulation on qualified
terrain.', 'No problems with
expected performance', 'Recommend inclusion of
additional information in operating manual stating: don’t
operate on mud.', 1),
 
 
(1004, 789012, 320, 221095, '10-14-2014', 'Used computer simulation of vehicle with
40 pound rider 3 MPH; 5MPH; 10MPH; 15MPH
test runs. Tried it on qualified uneven
terrain including potholes. Tried it on
unqualified terrain (sand). ', 'No problems with
expected performance', 'No problems with
expected
performance. ', 0),
 
 
(1005, 789013, 330, 221095, '10-14-2014', 'Tried actual experimental environment
same as computer simulation on
unqualified terrain (5” sand).', '45 degree outside
tilt and tipping.
', 'Test Not Completed. ', 0),

 
(1006, 789012, 340, 221096, '06-24-2014', 'Tried actual experimental environment
same as computer simulation on qualified
terrain.', 'No problems with
expected performance', 
'Recommend inclusion of
additional information in operating manual stating: don’t
operate on mud.', 1),
 
 
(1007, 789017, 330, 221097, '05-05-2015', 'Used computer simulation of vehicle with
40 pound rider 3 MPH; 5MPH; 10MPH; 15MPH
test runs. Tried it on qualified uneven
terrain including potholes. Tried it on
unqualified terrain (sand). ', 'No problems with expected performance', 
'No problems with expected performance. ', 0),
 
 
(1008, 789018, 310, 221097, '02-01-2015', 'Used computer simulation of vehicle with
40 pound rider 3 MPH; 5MPH; 10MPH; 15MPH
test runs. Tried it on qualified uneven
terrain including potholes. Tried it on unqualified terrain (sand). ', 'No problems with
expected performance', 
'Test Not Completed. ', 0),

(1009, 789019, 320, 221094, '03-25-2014', 'Tried actual experimental environment
same as computer simulation on
unqualified terrain (5” sand).', '45 degree outsidetilt and tipping.', 
'Test Not Completed. ', 0),

(1010, 789020, 330, 221095, '08-11-2014', 'Tried actual experimental environment
same as computer simulation on
unqualified terrain (5” sand).', '45 degree outside
tilt and tipping.', 
'Test Not Completed. ', 0),

(1011, 789013, 330, 221094, '06-04-2014', 'Tried actual experimental environment
same as computer simulation on
unqualified terrain (5” sand).', '45 degree outside
tilt and tipping.', 'Test Not Completed. ', 0),

(1012, 789014, 320, 221095, '12-14-2014', 'Used computer simulation of vehicle with 40 pound rider 3
MPH; 5MPH; 10MPH; 15MPH test runs. Tried it on qualified
uneven terrain including potholes. Tried it on unqualified
terrain (sand).',
'Slight outside tilt; no tipping at any speed on qualified terrain.
Tipping occurs when vehicle is used on sand.',
'No problems with expected performance. Provide additional
documentation to Marketing about intended operating
environment for JCSUV7. Recommend inclusion of
additional information in operating manual stating: do not
operate on sand.', 0);
