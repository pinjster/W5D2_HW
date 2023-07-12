CREATE TABLE "Customer"(
    "customer_id" SERIAL NOT NULL,
    "full_name" VARCHAR(255) NULL,
    "city_location" VARCHAR(255) NULL,
    "total_seen" INTEGER NULL,
    "ticket_id" INTEGER NULL,
    "email" VARCHAR(255) NULL,
    "username" VARCHAR(255) NULL
);
ALTER TABLE
    "Customer" ADD PRIMARY KEY("customer_id");
CREATE TABLE "Concessions"(
    "concessions_id" SERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NULL,
    "price" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "Concessions" ADD PRIMARY KEY("concessions_id");
CREATE TABLE "Movie"(
    "movie_id" SERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "duration" INTEGER NOT NULL,
    "rating" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NULL
);
ALTER TABLE
    "Movie" ADD PRIMARY KEY("movie_id");
CREATE TABLE "Theatre"(
    "theatre_id" SERIAL NOT NULL,
    "location" VARCHAR(255) NOT NULL,
    "auditorium_id" INTEGER NOT NULL,
    "concessions_id" INTEGER NOT NULL
);
ALTER TABLE
    "Theatre" ADD PRIMARY KEY("theatre_id");
CREATE TABLE "Ticket"(
    "ticket_id" SERIAL NOT NULL,
    "auditorium_id" INTEGER NOT NULL,
    "seat_id" INTEGER NOT NULL,
    "movie_id" INTEGER NOT NULL,
    "showtime" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "purchase_time" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "Ticket" ADD PRIMARY KEY("ticket_id");
CREATE TABLE "Auditorium"(
    "auditorium_id" SERIAL NOT NULL,
    "seat_id" SERIAL NOT NULL,
    "movie_id" INTEGER NOT NULL
);
ALTER TABLE
    "Auditorium" ADD PRIMARY KEY("auditorium_id");
ALTER TABLE
    "Auditorium" ADD PRIMARY KEY("seat_id");
ALTER TABLE
    "Customer" ADD CONSTRAINT "customer_ticket_id_foreign" FOREIGN KEY("ticket_id") REFERENCES "Ticket"("ticket_id");
ALTER TABLE
    "Ticket" ADD CONSTRAINT "ticket_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "Customer"("customer_id");
ALTER TABLE
    "Ticket" ADD CONSTRAINT "ticket_auditorium_id_foreign" FOREIGN KEY("auditorium_id") REFERENCES "Auditorium"("auditorium_id");
ALTER TABLE
    "Ticket" ADD CONSTRAINT "ticket_movie_id_foreign" FOREIGN KEY("movie_id") REFERENCES "Movie"("movie_id");
ALTER TABLE
    "Auditorium" ADD CONSTRAINT "auditorium_movie_id_foreign" FOREIGN KEY("movie_id") REFERENCES "Movie"("movie_id");
ALTER TABLE
    "Ticket" ADD CONSTRAINT "ticket_seat_id_foreign" FOREIGN KEY("seat_id") REFERENCES "Auditorium"("seat_id");
ALTER TABLE
    "Theatre" ADD CONSTRAINT "theatre_concessions_id_foreign" FOREIGN KEY("concessions_id") REFERENCES "Concessions"("concessions_id");
ALTER TABLE
    "Theatre" ADD CONSTRAINT "theatre_auditorium_id_foreign" FOREIGN KEY("auditorium_id") REFERENCES "Auditorium"("auditorium_id");