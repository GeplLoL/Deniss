---lisamine
---kustutamine
CREATE PROCEDURE LisaGuest
@Fname varchar(100),
@Lname varchar(100)
@since date,
AS 
Begin
INSERT INTO guest(first_name, last_name, member_since)
VALUES(@Fname, @Lname, @since);
SELECT * FROM guest;
SELECT * FROM logi;
END
---käivitamine
select * from guest;
EXECUTE LisaGuest @Fname='Deniss',@Lname='Gorjunov';
select * from guest;

----------

CREATE PROCEDURE deleteGuest
@id int

AS
BEGIN
SELECT * FROM guest;
DELETE FROM guest
Where @id=id;
SELECT * FROM guest;
select * from logi;
END;

--- käivitamine
exec deleteGuest 3;

create procedure arvGuest
AS
BEGIN
SELECT COUNT(*) FROM guest;
END;
---käivitamine
exec arvGuest;



