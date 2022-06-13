use spotify;

create table users(useer_id int primary key,
user_name varchar(50),
user_email varchar(50));
select * from users;

create table playlist(playlist_id int primary key,
playlist_name varchar(50),
playlist_desc varchar(50),
useer_id int,
foreign key(useer_id) references users(useer_id));
desc playlist;

create table tracks(track_id int primary key,
track_name varchar(50),
track_desc varchar(50),
useer_id int,
foreign key(useer_id) references users(useer_id));
desc tracks;


insert into users values(1,'mohit','mohit@gmail.com'),(2,'monu','monu@gmail.com');
insert into playlist values(100,'play1','desc1',1),(200,'play2','desc2',2);
insert into tracks values(1000,'track1','des1',1),(2000,'track2','des2',2);

select * from playlist;

#--Use Alter to add column and drop column

ALTER TABLE users 
 ADD user_surname varchar(40) 
 AFTER user_name;
 
ALTER TABLE users DROP COLUMN user_surname;

#--Rename,Truncate,Insert,Multiple insert

#Rename
ALTER TABLE users   
CHANGE COLUMN user_name users_first_name varchar(25);  

#Turncate
CREATE TABLE customer (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
);    
INSERT INTO customer ( Id, Name, Product, c, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016);  
select * from customer;
TRUNCATE  customer;  
select * from customer;

#Contrants:
 CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
 CREATE TABLE ShirtBrands(Id INTEGER, BrandName VARCHAR(40) UNIQUE, Size VARCHAR(30));  
 
 
 #Delete,Order by,Ascending,Descending,select,where
SELECT *  
FROM customer  
WHERE Country ='USA'
ORDER BY Id DESC; 

#And/Or
SELECT *  
FROM customer  
WHERE Name = 'Joseph'  
AND Id > 3;  

#Distinct Clause: show unique data only
SELECT DISTINCT Country  
FROM customer;  

#Group BY---> Aggregate function sum,count,min,max

#Count-->
SELECT Country, COUNT(*)  
FROM   Customer   
GROUP BY Country;

#Min-->
SELECT Name, MIN(year) AS "Minimum year"  
FROM Customer 
GROUP BY Name;  
#Max-->
SELECT Name, max(year) AS "Max year"  
FROM Customer 
GROUP BY Name; 
#Avg-->
SELECT Name, avg(year) AS "Avg year"  
FROM Customer 
GROUP BY Name; 
#Sum-->
 SELECT SUM(year) AS "Total year" FROM Customer;  








select * from users
join playlist on 
users.useer_id = playlist.useer_id;



select * from users
join tracks on 
users.useer_id = tracks.useer_id;



select users.user_name,playlist.playlist_name from users
join playlist on 
users.useer_id = playlist.useer_id;


