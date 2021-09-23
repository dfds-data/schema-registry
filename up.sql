create database schemaregistry;
\c schemaregistry
create table users ("myuser" text, "mypassword" text);
create table userroles ("myuser" text, "myrole" text);
insert into users("myuser", "mypassword") values ('barney', 'changeme');
insert into userroles("myuser", "myrole") values ('barney', 'user');
insert into users("myuser", "mypassword") values ('ted', 'letmein');
insert into userroles("myuser", "myrole") values ('ted', 'user');