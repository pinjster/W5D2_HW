insert into customer(
	email,
	"password",
	"name",
	address
)values(
	'seanc@codingtemple.com',
	'123',
	'sean currie',
	'123 main st chicago il'
);

select *
from customer;

insert into customer(
	customer_id,
	email,
	"password",
	"name",
	address
)values(
	2,
	'dylans@codingtemple.com',
	'123',
	'dylan smith',
	'123 main st chicago il'
);

select *
from customer;

insert into cart(
	customer_id
)values(1),(2);

select *
from cart;

insert into product(
	name,
	description
)values(
	'pillow',
	'rad fluffy pillow'
);

select *
from product;

insert into product(
	name
)values(
	'blanket'
);

insert into cart_product(
	cart_id,
	product_id 
)values(
	1,
	1
);

select *
from product;

insert into cart_product(
	cart_id,
	product_id
)values(
	25,
	10
);

select * from cart_product;

insert into cart_product(
	cart_id,
	product_id
)values(
	2,
	1
),( 
	2,
	2
);

update cart
set cart_id = 5
where cart_id = 6;

select * from cart;

select * from "order";
insert into "order"(
	cart_id,
	total_price
)values(
	2,
	2.50
);