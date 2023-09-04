CREATE TRIGGER roomLisamine
ON room
FOR INSERT
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat(inserted.number, ',', inserted.name_, ',', inserted.status_, ',', inserted.smoke),
'room on lisatud'
FROM inserted
--kontroll
insert into room(number,name_, status_,smoke)
values('112','Gorji', 'Lux',1)

SELECT * FROM guest;
SELECT * FROM logi;
------------------------------------

CREATE TRIGGER roomKustutamine
ON room
FOR DELETE
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat(deleted.number, ',', deleted.name_, ',', deleted.status_, ',', deleted.smoke),
'room on kusututatud'
FROM deleted
--kontroll
Delete from room WHERE id=1;

SELECT * FROM guest;
SELECT * FROM logi;
-----------------------------------------------
CREATE TRIGGER roomUuendamine
ON room
FOR Update
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat('VANAD - ', 
deleted.number,
', ',
deleted.name_,
', ',
deleted.status_,
', ',
deleted.smoke,
'UUED - ',
inserted.number,
', ',
inserted.name_,
', ',
inserted.status_,
', ',
inserted.smoke),
'room on uuendatud'
FROM deleted Inner JOIN inserted
ON deleted.id=inserted.id
--kontroll
SELECT * FROM room;
UPDATE room SET number='878'
WHERE id=3;
SELECT * FROM guest;
select * from logi;