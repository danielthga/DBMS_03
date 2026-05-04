SELECT * FROM copy WHERE shelf_loc LIKE 'A%';

SELECT title, pub_year FROM book;

SELECT isbn, shelf_loc FROM copy WHERE shelf_loc >= 'B';

SELECT member.full_name, book.title FROM loan JOIN member ON loan.member_no = member.member_no JOIN copy ON loan.copy_no = copy.copy_no JOIN book ON copy.isbn = book.isbn WHERE loan.return_date IS NULL;

SELECT m.full_name, COUNT(l.member_no) AS active_loans FROM member AS m LEFT OUTER JOIN loan AS l ON m.member_no = l.member_no AND l.return_date IS NULL GROUP BY m.member_no, m.full_name;

SELECT isbn FROM book EXCEPT SELECT isbn FROM copy JOIN loan ON copy.copy_no = loan.copy_no;
