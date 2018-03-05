drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
user_address varchar(50),
user_address1 varchar(50),
user_address2 varchar(50),
user_address3 varchar(50),
user_sex varchar(50),
user_tell varchar(16),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
image_file_name varchar(255),
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);

INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_name) VALUES
("Saber", 100, 50, "./image/ken.jpg"),
("Archer", 80, 99, "./image/yumi.jpg"),
("Lancer", 80, 99, "./image/yari.jpg"),
("Rider", 80, 99, "./image/uma.jpg"),
("Assassin", 80, 99, "./image/asasin.jpg"),
("Caster",80, 99, "./image/tue.jpg"),
("Berserker",5000, 50, "./image/basaka.jpg"),
("Ruler",10000, 20, "./image/seijo.jpg"),
("Avenger",50000, 10, "./image/ave.jpg"),
("Shielder",100000, 1, "./image/tate.jpg");


INSERT INTO login_user_transaction(login_id, login_pass, user_name, user_address, user_address1, user_address2, user_address3, user_sex, user_tell)VALUES
("nitta", "456", "test","saitama","kita","nishi","100","男","04804804800"),
("kazuki","111","master","kawa","guchi","aoki","100","男","09876543211");

CREATE TABLE contact(
name varchar(255)COMMENT "お問い合わせ名前",
qtype varchar(255)COMMENT "お問い合わせ種類",
content varchar(255))COMMENT "お問い合わせ内容";
