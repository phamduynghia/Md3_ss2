create table users(
id int primary key auto_increment,
fullName varchar(100),
email varchar(255),
password varchar(255),
phone varchar(11),
permission bit,
status bit
);

create table address(
id int primary key auto_increment,
user_id int,
foreign key (user_id) references users(id),
receiveAddress varchar(100),
receiveName varchar(100),
receivePhone varchar(11),
isDefault bit
);

create table orders(
id int primary key auto_increment,
arderAt datetime,
totals double,
user_id int,
foreign key (user_id) references users(id),
status bit
);

create table catalog(
id int primary key auto_increment,
name varchar(100),
status bit
);

create table product(
id int primary key auto_increment,
name varchar(100),
price double,
stock int,
catalog_id int,
foreign key (catalog_id) references catalog(id),
status bit
);

create table wishlist(
user_id int,
foreign key (user_id) references users(id),
product_id int,
foreign key (product_id) references product(id)
);

create table shopping_cart(
id int primary key auto_increment,
user_id int,
foreign key (user_id) references users(id),
product_id int,
foreign key (product_id) references product(id),
quantity int
);

create table order_detail(
id int primary key auto_increment,
order_id int,
foreign key (order_id) references orders(id),
product_id int,
foreign key (product_id) references product(id),
quantity int,
unit_price double
);