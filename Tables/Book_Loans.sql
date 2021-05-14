CREATE TABLE Book_Loans
(BookLoanID int PRIMARY KEY NOT NULL
,BookID int NOT NULL
,BranchID int NOT NULL
,CardNo varchar(25) NOT NULL
,DateOut date
,DueDate date)

INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (2,10,1,'111-111-111-112',DATE '2016-12-10',DATE '2016-12-15');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (3,11,1,'111-111-111-113',DATE '2016-12-12',DATE '2016-12-17');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (4,7,1,'111-111-111-114',DATE '2016-12-12',DATE '2016-12-17');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (5,18,1,'111-111-111-115',DATE '2016-12-10',DATE '2016-12-15');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (6,17,1,'111-111-111-113',DATE '2016-12-14',DATE '2016-12-19');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (7,16,1,'111-111-111-116',DATE '2016-12-14',DATE '2016-12-19');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (8,1,1,'111-111-111-112',DATE '2016-12-12',DATE '2016-12-17');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (9,20,1,'111-111-111-116',DATE '2016-12-14',DATE '2016-12-19');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (10,18,1,'111-111-111-114',DATE '2016-12-10',DATE '2016-12-15');
INSERT INTO Book_Loans(BookLoanID, BookID, BranchID, CardNo, DateOut, DueDate) VALUES (11,6,2,'111-111-111-112',DATE '2016-12-14',DATE '2016-12-19');

