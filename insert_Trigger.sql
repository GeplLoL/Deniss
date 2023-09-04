CREATE TRIGGER guestLisamine
ON guest
FOR INSERT
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat(inserted.first_name, ',', inserted.last_name),
'guest on lisatud'
FROM inserted
--kontroll
insert into guest(first_name,last_name, member_since)
values('Deniss','Gorjunov', '2023-03-21')

insert into guest(first_name,last_name, member_since)
values('Oleg','Voroshenko', '2023-03-21')

SELECT * FROM guest;
SELECT * FROM logi;