create table customer(
	customer_id serial primary key,
	email varchar not null,
	"password" varchar(50) not null,
	"name" varchar(100),
	address varchar(150)
);

select *
from customer;

create table cart(
	cart_id serial primary key,
	customer_id int not null,
	foreign key(customer_id) references customer(customer_id)
);

select *
from cart;

create table product(
	product_id serial primary key,
	name varchar(75) not null,
	description varchar(225)
);

create table cart_product(
	cart_product_id serial primary key,
	cart_id int not null,
	product_id int not null,
	foreign key(cart_id) references cart(cart_id),
	foreign key(product_id) references product(product_id)
);

create table "order" (
	order_id serial primary key,
	cart_id int,
	total_price decimal(10,2) not null,
	foreign key(cart_id) references cart(cart_id)
);

alter table "order" alter column total_price type numeric(10,2);

select *
from "order";
 
create table sellers(
	seller_id serial primary key,
	company_name varchar not null,
	email varchar
);

select *
from sellers;

create table inventory(
	inventory_id serial primary key,
	seller_id int,
	product_id int,
	product_quantity int,
	product_price decimal(10,2),
	foreign key(seller_id) references sellers(seller_id),
	foreign key(product_id) references product(product_id)
);

select *
from inventory;
