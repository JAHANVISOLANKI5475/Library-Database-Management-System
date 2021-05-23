create OR REPLACE procedure Showdata(bookid_ in  BOOK_INFO59.BookID%TYPE, bankid_ in Book_Loans63.BookLoanID%TYPE)
  is
    author_ Book_Authors60.AuthorName%TYPE;
    name_ BOOK_INFO59.PublisherName%TYPE;
    card Book_Loans63.CardNo%TYPE;
    nameof Borrower60.name%TYPE;
    addressof Borrower60.Address%TYPE;
    phoneof Borrower60.Phone%TYPE;
begin
    select PublisherName
    into name_ 
    from BOOK_INFO59
    where bookid_ = BookID;
    
    Select AuthorName
    into author_
    from Book_Authors60
    where bookid_ = BookID;
    
    SELECT CardNo
    into card
    from Book_Loans63
    where bankid_=BookLoanID;
    
    SELECT NAME
    into nameof
    from Borrower60
    where card = CardNo;
    
    SELECT Address
    into addressof
    from Borrower60
    where card = CardNo;
    
    SELECT Phone
    into phoneof
    from Borrower60
    where card = CardNo;
    
    dbms_output.put('The name of the book is: ');
    dbms_output.put_line(name_);
    dbms_output.put('The author of this book is: ');
    dbms_output.put_line(author_);
    dbms_output.put('The card number associated with this bankid is: ');
    dbms_output.put_line(card);
    dbms_output.put('The name of the person whose card it : ');
    dbms_output.put_line(nameof);
    dbms_output.put('The address of the person is: ');
    dbms_output.put_line(addressof);
    dbms_output.put('Hs/Her phone no is: ');
    dbms_output.put_line(phoneof);
