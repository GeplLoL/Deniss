insert into guest(first_name,last_name, member_since)
values('Deniss','Gorjunov', '2023-03-21')

insert into guest(first_name,last_name, member_since)
values('Oleg','Voroshenko', '2023-03-21')

insert into guest(first_name,last_name, member_since)
values('Sasha','Petrenko', '2023-03-21')

insert into guest(first_name,last_name, member_since)
values('Luki','Kapysta', '2023-03-21')

insert into guest(first_name,last_name, member_since)
values('Roman','Sili', '2021-03-21')

insert into room_type(description_, max_capacity)
values('Lux', 4)

insert into room_type(description_, max_capacity)
values('Cheap', 1)

insert into reservation(guest_id,date_in,date_out,made_by)
values(1,'2023-03-23','2023-03-30','Hotel');

insert into reservation(guest_id,date_in,date_out,made_by)
values(2,'2023-01-23','2023-01-30','Hotel');

insert into reservation(guest_id,date_in,date_out,made_by)
values(3,'2023-05-23','2023-05-30','Hotel');

insert into reservation(guest_id,date_in,date_out,made_by)
values(4,'2023-06-23','2023-06-30','Hotel');

insert into reservation(guest_id,date_in,date_out,made_by)
values(5,'2023-06-23','2023-06-30','Hotel');

Insert into reserved_room(
number_of_rooms, room_type_id, reservation_id, status_)
values(1,1,1,'Closed')

Insert into reserved_room(
number_of_rooms, room_type_id, reservation_id, status_)
values(2,2,2,'Closed')

Insert into reserved_room(
number_of_rooms, room_type_id, reservation_id, status_)
values(6,6,6,'Closed')

Insert into reserved_room(
number_of_rooms, room_type_id, reservation_id, status_)
values(3,3,3,'Closed')

INSERT INTO occupied_room (check_in,check_out, room_id, reservation_id)
VALUES ('2021-07-07 10:05:23.187', '2022-08-07 10:05:23.187', 5, 6);

insert into hosted_at(guest_id, occupied_room_id)
values(5,15)
