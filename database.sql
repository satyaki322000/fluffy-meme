create database show_db

create table movies(
movie_name varchar,
lead_actor varchar,
release_year int,
director_name varchar
);

alter table movies add movie_id int primary key
alter table movies add actress varchar