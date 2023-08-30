CREATE TABLE guest(
id int IDENTITY(1,1) PRIMARY KEY,
first_name varchar(80),
last_name varchar(80) NULL,
member_since date,
)

CREATE TABLE room_type(
id int IDENTITY(1,1) PRIMARY KEY,
description_ varchar(80) Null,
max_capacity int,
)

CREATE TABLE room (
id int IDENTITY(1,1) PRIMARY KEY,
room_type_id int,
number varchar(10),
name_ varchar(40),
status_ varchar(10),
smoke BIT,
FOREIGN KEY (room_type_id) REFERENCES room_type(id)
);

CREATE TABLE reservation (
id int IDENTITY(1,1) PRIMARY KEY,
guest_id int,
date_in date,
date_out date,
made_by varchar(20),
FOREIGN KEY (guest_id) REFERENCES guest(id)
);

CREATE TABLE reserved_room (
id int IDENTITY(1,1) PRIMARY KEY,
number_of_rooms int,
room_type_id int,
reservation_id int,
FOREIGN KEY (reservation_id) REFERENCES reservation(id),
FOREIGN KEY (room_type_id) REFERENCES room_type(id),
status_ varchar(20),
);

CREATE TABLE occupied_room(
id int IDENTITY(1,1) PRIMARY KEY,
check_in datetime,
check_out datetime,
room_id int,
reservation_id int,
FOREIGN KEY (reservation_id) REFERENCES reservation(id),
FOREIGN KEY (room_id) REFERENCES room(id),
)

CREATE TABLE occupied_room(
id int IDENTITY(1,1) PRIMARY KEY,
check_in datetime,
check_out datetime,
room_id int,
reservation_id int,
FOREIGN KEY (reservation_id) REFERENCES reservation(id),
FOREIGN KEY (room_id) REFERENCES room(id),
)

CREATE TABLE hosted_at(
id int IDENTITY(1,1) PRIMARY KEY,
guest_id int,
occupied_room_id int,
FOREIGN KEY (guest_id) REFERENCES guest(id),
FOREIGN KEY (occupied_room_id) REFERENCES occupied_room(id),
)
