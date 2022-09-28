CREATE DATABASE homework;
USE homework;
 CREATE TABLE bus_route(bus_number CHAR(2) NOT NULL, 
 bus_letter CHAR(1) NOT NULL, departure VARCHAR(20), 
 destination VARCHAR(20), weekdays ENUM('yes','no'), 
 weekend ENUM('yes','no'), PRIMARY KEY(bus_number, bus_letter));

 INSERT INTO bus_route 
 VALUES(1,'A','RAILWAY_ST', 'HOSPITAL','YES', 'NO');
 INSERT INTO bus_route 
 VALUES(1,'B','BEACH', 'RAILWAY_ST','YES', 'NO'), 
 (1,'C','FABRIC', 'VILLAGE', 'YES', 'YES'), 
 (2,'A','SHOP', 'FACTORY', 'YES', 'NO'), 
 (2,'B','VILLAGE', 'SHOP', 'NO', 'YES'), 
 (2,'C','STADIUM', 'MUZ_SCHOOL', 'YES', 'YES');
 INSERT INTO bus_route 
 VALUES(3,'A','SCHOOL', 'BEACH', 'NO', 'YES'), 
 (3,'B','HOSPITAL_2', 'FABRIC', 'YES', 'YES'), 
 (3,'C','FACTORY', 'FOUNTAIN', 'YES', 'NO'), 
 (3,'D','MUZ_SCHOOL', 'SCHOOL', 'YES', 'YES');
 
 Select * From bus_route;
 DESCRIBE bus_route;
 





