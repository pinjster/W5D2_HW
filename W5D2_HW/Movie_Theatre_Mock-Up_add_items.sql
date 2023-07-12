insert into "Movie"(
	title,
	duration,
	rating
)values(
	'Everything Everywhere All At Once',
	139,
	'R'
),(
	'Inception',
	148,
	'PG-13'
),(
	'The Matrix',
	136,
	'R'
);
select * from "Movie";

insert into "Auditorium"(
	movie_id
)values(
	2
),(
	3
),(
	3
);
select * from "Auditorium";

insert into "Concessions"(
	title,
	description,
	price
)values(
	'Popcorn',
	'Buttery (20oz)',
	4.90
),(
	'Coca-Cola',
	'Diet (20oz)',
	3.45
);
insert into "Concessions"(
	title,
	price
)values(
	'Hot Dog',
	3.50
);
select * from "Concessions";

insert into "Theatre"(
	"location",
	auditorium_id,
	concessions_id 
)values(	
	'Columbus, OH',
	1,
	1
),(
	'Atlanta, GA',
	1,
	2
),(
	'Chicago, IL',
	2,
	3
);
select * from "Theatre";

insert into "Customer"(
	full_name,
	city_location,
	ticket_id
)values(
	'Benjamin Copen',
	'Columbus, OH',
	1
),(
	'Sean Curie',
	'Chicago, IL',
	1
);
select * from "Customer";

insert into "Ticket"(
	auditorium_id,
	seat_id,
	movie_id,
	showtime,
	purchase_time,
	customer_id,
	price
)values(
	1,
	2,
	2,
	'00:00:00.0000000',
	'2023-07-23',
	1,
	8.30
),(
	1,
	3,
	1,
	'00:00:00.0000000',
	'2023-07-23',
	2,
	8.30
);
select * from "Ticket";

