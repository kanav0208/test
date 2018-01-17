drop database if exists servletdb;
create database servletdb;
use servletdb;
create table test_table(
use_id int,
use_name varchar(255),
password varchar(255)
);

insert into test_table values(1,"taro","123");
insert into test_table values(2,"jiro","456");
insert into test_table values(3,"hanako","789");

