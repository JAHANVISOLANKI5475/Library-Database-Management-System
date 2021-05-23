DECLARE 
   c_name Borrower60.name%type; 
   c_cardno Borrower60.CardNo%type; 
   c_address Borrower60.Address%type;
   c_phone Borrower60.Phone%type;
   CURSOR c_customers is 
      SELECT name,CardNo,Address,Phone FROM Borrower60; 
BEGIN
    dbms_output.put_line('NAME' || '  CARDNO' || '  ADDRESS' || '  Phone');
   OPEN c_customers; 
   LOOP 
   FETCH c_customers into c_name, c_cardno, c_address,c_phone; 
      EXIT WHEN c_customers%notfound; 
      dbms_output.put_line(c_name || ' ' || c_cardno || ' ' || c_address || ' ' || c_phone); 
   END LOOP; 
   CLOSE c_customers; 
END; 
/
