DECLARE 
   b_id BOOK_INFO.BookID%type := 1; 
   b_name BOOK_INFO.Title%type; 
   b_addr BOOK_INFO.PublisherName%type;  
   ex_invalid_id  EXCEPTION; 
BEGIN 
   IF b_id <= 0 THEN 
      RAISE ex_invalid_id; 
   ELSE 
      SELECT  Title, PublisherName INTO  b_name, b_addr 
      FROM BOOK_INFO 
      WHERE BookID = b_id;
      DBMS_OUTPUT.PUT_LINE ('Title: '||  b_name);  
      DBMS_OUTPUT.PUT_LINE ('PublisherName: ' || b_addr); 
   END IF; 

EXCEPTION 
   WHEN ex_invalid_id THEN 
      dbms_output.put_line('ID must be greater than zero!'); 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such book ID!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!');  
END; 
/
