CREATE TRIGGER guestKustutamine
ON guest
FOR DELETE
AS
INSERT INTO logi(kuupaev,kasutaja,andmed,tegevus)
Select Getdate(), User,
Concat(deleted.first_name, ',', deleted.last_name),
'guest on kustutatud'
FROM deleted
--kontroll
Delete from guest WHERE id=1;

SELECT * FROM guest;
SELECT * FROM logi;