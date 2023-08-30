CREATE TABLE guest(
id int NOT NULL PRIMARY KEY,
first_name varchar(80),
Last_name varchar(80) NULL,
member_since date,
guest_id int,
);
CREATE TABLE room_type(
id int NOT NULL PRIMARY KEY,
max_capacity int,
discription varchar(80),
room_type_id int,
);

CREATE TABLE room(
id int NOT NULL PRIMARY KEY,
number varchar(10),
name_ varchar(40),
status_ varchar(10),
smoke BIT,
room_type_id int,
FOREIGN KEY (room_type_id) REFERENCES room_type(id),  
)

CREATE TABLE reservation(
id int NOT NULL PRIMARY KEY,
date_in date,
date_out date,
made_by varchar(10),
guest_id int,
FOREIGN KEY (guest_id) REFERENCES guest(id),  
)

CREATE TABLE reserved_room(
id int NOT NULL PRIMARY KEY,
number_of_rooms int,
room_type_id int,
reservation_id int,
FOREIGN KEY (room_type_id) REFERENCES room_type(id), 
FOREIGN KEY (reservation_id) REFERENCES reservation(id),
status_ varchar(20),
)
