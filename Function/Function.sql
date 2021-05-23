
CREATE OR REPLACE FUNCTION MOST_AVAILABLE_PUBLISHER(  
PublisherName in varchar  
)   
RETURN number  
IS  
    COUNT_OF_THE_PUBLISHER_NAME number(20);  
BEGIN  
      
    Select count(*) into COUNT_OF_THE_PUBLISHER_NAME from BOOK_INFO59   
    where PublisherName = 'Bill''s Publishing';  
    RETURN COUNT_OF_THE_PUBLISHER_NAME;  
END; 

/

DECLARE  
    Publisher_count number(20);  
BEGIN  
    Publisher_count := MOST_AVAILABLE_PUBLISHER(20);  
    DBMS_OUTPUT.PUT_LINE('Count of the Publisher which is asked : ' || Publisher_count);  
END;  

/
