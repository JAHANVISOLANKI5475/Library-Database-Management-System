Create or replace trigger before_greater
BEFORE INSERT ON Borrower60 
for each row
declare
    n int;
begin
    select count(*) into n FROM Borrower where cardno = :new.cardno;
    if n<>0 then
        raise_application_error(-20001,'First submit the previous books');
    end if;
End;
