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


select * from users
join playlist on 
users.useer_id = playlist.useer_id;



select * from users
join tracks on 
users.useer_id = tracks.useer_id;



select users.user_name,playlist.playlist_name from users
join playlist on 
users.useer_id = playlist.useer_id;


