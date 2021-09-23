create database schemaregistry;
\c schemaregistry
create table users ("user" text, "password" text);
create table userroles ("user" text, "role" text);
insert into users("user", "password") values ('barney', 'changeme');
insert into userroles("user", "role") values ('barney', 'user');
insert into users("user", "password") values ('ted', 'letmein');
insert into userroles("user", "role") values ('ted', 'user');