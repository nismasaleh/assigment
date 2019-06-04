

create table genres
(
	gen_id integer primary key AUTO_INCREMENT,
	gen_title char(20) null,
	constraint genres_pk
		primary key (gen_id)
);

INSERT INTO genres(gen_id, gen_title) VALUES ( 1,'Romance');
INSERT INTO genres(gen_id, gen_title) VALUES (2, 'Horror');
INSERT INTO genres(gen_id, gen_title) VALUES (3, 'Comic');
INSERT INTO genres(gen_id, gen_title) VALUES (4, 'documentary');



alter table movie_direction
	add constraint movie_direction_pk
		primary key (dir_id);




create table actor
(
	act_id int null,
	act_fname char(20) null,
	act_iname char(20) null,
	act_gender char null,
	constraint actor_pk
		primary key (act_id)
);

INSERT INTO actor(act_id, act_fname, act_iname, act_gender) values (1,'a','b','F');
INSERT INTO actor(act_id, act_fname, act_iname, act_gender) values (2,'asd','vfd','M');


create table reviewer
(
	rev_id int null,
	rev_name char(30) null,
	constraint reviewer_pk
		primary key (rev_id)
);

INSERT INTO reviewer(rev_id, rev_name)values (1,'google');
INSERT INTO reviewer(rev_id, rev_name)values (2,'cima u');
INSERT INTO reviewer(rev_id, rev_name)values (3,'aflam');
INSERT INTO reviewer(rev_id, rev_name)values (4,'foxy');


create table movie
(
	mov_id int null,
	mov_title char(50) null,
	mov_year int null,
	mov_time int null,
	mov_lang char(50) null,
	mov_dt_rel date null,
	mov_rel_country char(5) null,
	constraint movie_pk
		primary key (mov_id)
);

INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_rel_country)
VALUES (1, 'American Beauty',1999,120,'1999-08-06','English','Us');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (2, 'bodyGard',1995,110,'English','1995-02-02','Us');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (3, 'Woody',2009,60,'Dutch','2009-01-1','Us');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (4, 'baby',2000,70,'English','2000-05-06','Be');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (5, 'sweet remember',1990,200,'English','1990-08-02','Us');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (6, 'Eyes wide Shut',1986,150,'French','1986-02-06','Fr');
INSERT INTO movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
VALUES (7, 'Annie Hall',2018,35,'English','2018-01-03','Sp');





create table movie_cast
(
	act_id int null,
	mov_id int null,
	role char(30) null
);

INSERT  into movie_cast(act_id, mov_id, role) values (1,1,'herro');
INSERT  into movie_cast(act_id, mov_id, role) values (2,2,'second');
INSERT  into movie_cast(act_id, mov_id, role) values (3,3,'helping');



create table movie_genres
(
	mov_id int null,
	gen_id int null
);

create table rating
(
	mov_id int null,
	rev_id int null,
	rev_stars int null,
	num_o_rating int null
);

INSERT INTO rating(mov_id, rev_id, rev_stars, num_o_rating) values(1,1,4,100);
INSERT INTO rating(mov_id, rev_id, rev_stars, num_o_rating) values(2,2,9,150);
INSERT INTO rating(mov_id, rev_id, rev_stars, num_o_rating) values(3,3,8,30);
INSERT INTO rating(mov_id, rev_id, rev_stars, num_o_rating) values(4,4,7,20);
INSERT INTO rating(mov_id, rev_id, rev_stars, num_o_rating) values(5,5,'null','null');
alter table movie_direction modify mov_id int null first;

