create database SocialMedia;
use SocialMedia;
create table Users(user_id int primary key,username varchar(20) not null,email varchar(35),join_date date,country varchar(20),bio varchar(60));
drop table users;

CREATE TABLE Users (
    user_id CHAR(4) PRIMARY KEY,
    username VARCHAR(21) NOT NULL,
    email VARCHAR(35),
    join_date DATE,
    country VARCHAR(20),
    bio VARCHAR(60)
);

INSERT INTO users VALUES ('U001','social_butterfly' ,'butterfly@gmail.com', '2023-01-15','USA', "Love to travel and meet new people");
INSERT INTO users VALUES ('U002','tech_guru' ,'user@gmail.com', '2022-11-30','india', "coder");
select * from users;

CREATE TABLE Posts (
    post_id CHAR(5) PRIMARY KEY,
    user_id CHAR(4),
    content VARCHAR(55),
    timestamp DATETIME,
    likes_count INT,
    comments_count INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
insert into Posts values('P0001','U001' ,'"Having a great time at the beach!"', '2024-07-14 15:30:00','42', "5");
insert into Posts values('P0002','U002' ,'"created new app"', '2024-07-14 16:45:00','22', "11");

CREATE TABLE Comments (
    comment_id CHAR(5) PRIMARY KEY,
    post_id CHAR(5),
    user_id CHAR(4),
    content VARCHAR(55),
    timestamp DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (post_id) REFERENCES Posts(post_id)
);
insert into Comments values('C0001','P0001','U001' ,'"Having a great time "', '2024-07-14 15:35:00');
insert into Comments values('C0002','P0002','U002' ,'"created robot"', '2024-07-14 16:50:00');
CREATE TABLE Friendships (
    friendship_id CHAR(5) PRIMARY KEY,
    user_id1 CHAR(4),
    user_id2 CHAR(4),
    status varchar(15),
    created_at DATE,
    FOREIGN KEY (user_id1) REFERENCES Users(user_id),
    FOREIGN KEY (user_id2) REFERENCES Users(user_id)
);
insert into Friendships values('F0001','U001','U002' ,'accepted', '2024-05-20');
insert into Friendships values('F0002','U002','U001' ,'pending', '2024-06-15');
CREATE TABLE UserInterests (
    intrest_id CHAR(5) PRIMARY KEY,
    user_id CHAR(4),
    intrests varchar(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
insert into UserInterests values('I0001','U001','travel');
insert into UserInterests values('I0002','U002','tech');
select * from Friendships;