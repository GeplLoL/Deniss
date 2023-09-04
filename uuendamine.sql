CREATE TRIGGER guestUuendamine
ON guest
FOR Update
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat('VANAD - ', 
deleted.first_name,
', ',
deleted.last_name,
'UUED - ',
inserted.first_name,
', ',
inserted.last_name),
'guest on uuendatud'
FROM deleted Inner JOIN inserted
ON deleted.id=inserted.id
--kontroll
SELECT * FROM guest;
UPDATE guest SET first_name='Luca'
WHERE id=3;
SELECT * FROM guest;
select * from logi;