USE Library

--/Library_Branch/--
CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

INSERT INTO Library_Branch
	(BranchID, BranchName, Address)
	VALUES
	('01', 'Sharpstown', '90 Lilac Lane Winchester, WA'),
	('02', 'Central', '203 Piper Ave. Powhatan, WA'),
	('03', 'North Bend', '96 Wayne St. Granger, WA'),
	('04', 'Eastville', '237 NE. Walnut Drive Barrington, WA')
;

SELECT * FROM Library_Branch;

--/ Publisher/--
CREATE TABLE Publisher (
	PublisherName INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Allen & Unwin'),
	('Little, Brown and Company'),
	('W.W. Norton and Company'),
	('Houghton Mifflin Harcourt'),
	('J. B. Lippincott & Co.'),
	('The Super Legitimate Publishing Company'),
	('Tell Everyone Publishing'),
	('Viking Press'),
	('People Who Like Cats'),
	('Something Creative'),
	('Woof Automotive'),
	('Two Banana Slugs'),
	('Somewhere in Russia'),
	('Doubleday'),
	('Fruit Connoisseurs'),
	('The Oven Publishing'),
	('ZZZ Inc.'),
	('Young Brothers Inc.'),
	('Basic Publishers'),
	('Why Not Company'),
	('The Tech Academy')
;

SELECT * FROM Publisher;

--/ Books/--
CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

INSERT INTO Books
	(BookID, Title, PublisherName)
	VALUES
	('01', 'The Lord of the Rings', 'Allen & Unwin'),
	('02', 'The Catcher in the Rye', 'Little, Brown and Company'),
	('03', 'A Clockwork Orange', 'W.W. Norton and Company'),
	('04', 'The Giver', 'Houghton Mifflin Harcourt'),
	('05', 'To Kill a Mockingbird', 'J. B. Lippincott & Co.'),
	('06', 'Totally Not a Real Book', 'The Super Legitimate Publishing Company'),
	('07', 'Hey Im a Vegan!', 'Tell Everyone Publishing'),
	('08', 'It', 'Viking Press'),
	('09', 'Cat Facts', 'People Who Like Cats'),
	('10', 'All About Doorknobs', 'Something Creative'),
	('11', 'Cars for Dogs', 'Woof Automotive'),
	('12', 'The Guide to Neighborly Warfare', 'Two Banana Slugs'),
	('13', 'Cabbage vs Vodka', 'Somewhere in Russia'),
	('14', 'The Shining', 'Doubleday'),
	('15', 'Passion of the Fruit', 'Fruit Connoisseurs'),
	('16', 'Pizza Chronicles', 'The Oven Publishing'),
	('17', 'Sleepy Sleepy Seattle', 'ZZZ Inc.'),
	('18', 'Batu Kingpin', 'Young Brothers Inc.'),
	('19', 'Not Without my Denim', 'Basic Publishers'),
	('20', 'The Poor Mans Guide to Korean BBQ', 'Why Not Company'),
	('21', 'The Lost Tribe', 'The Tech Academy')
;

SELECT * FROM Books;

--/ Book Authors/--
CREATE TABLE Book_Authors (
	BookID VARCHAR(50) NOT NULL,
	AuthorName VARCHAR(50) NOT NULL
);

INSERT INTO Book_Authors
	(BookID, AuthorName)
	VALUES
	('08', 'Stephen King'),
	('14', 'Stephen King'),
	('02', 'J.D. Salinger'),
	('03', 'Anthony Burgess'),
	('04', 'Lois Lowry'),
	('05', 'Harper Lee'),
	('06', 'Carroll Kreiner'),
	('07', 'Eli Gamber'),
	('09', 'Hilario Gose'),
	('10', 'Korey Clingerman'),
	('11', 'Kyle Otts'),
	('12', 'Chuck Lukes'),
	('13', 'Colin Kornfield'),
	('15', 'Britt Christner'),
	('16', 'Father Johnathan'),
	('18','Devin Kocher'),
	('19','Derick Tuck'),
	('20','Ernesto Betterton'),
	('21','Jason Cogan')
;

SELECT * FROM Book_Authors;
--/ Book Copies/--

CREATE TABLE Book_Copies (
	BookID VARCHAR(50) NOT NULL,
	BranchID VARCHAR(50) NOT NULL,
	Number_Of_Copies VARCHAR(50) NOT NULL
);

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	('01', '1', '2'),
	('02', '4', '2'),
	('03', '3', '2'),
	('04', '1', '2'),
	('05', '2', '2'),
	('06', '2', '2'),
	('07', '3', '2'),
	('08', '3', '2'),
	('09', '1', '2'),
	('10', '4', '2'),
	('11', '2', '2'),
	('12', '1', '2'),
	('13', '3', '2'),
	('14', '3', '2'),
	('15', '1', '2'),
	('16', '2', '2'),
	('17', '3', '2'),
	('18', '2', '2'),
	('19', '4', '2'),
	('20', '4', '2'),
	('21', '1', '2')
;

SELECT * FROM Book_Copies;

--/ Book Loans/--
CREATE TABLE Book_Loans (
	BookID VARCHAR(50) NOT NULL,
	BranchID VARCHAR(50) NOT NULL,
	CardNo VARCHAR(50) NOT NULL,
	DateOut VARCHAR(50) NOT NULL,
	DateDUE VARCHAR(50) NOT NULL
);

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	('01', '1', '2'),
	('02', '4', '2'),
	('03', '3', '2'),
	('04', '1', '2'),
	('05', '2', '2'),
	('06', '2', '2'),
	('07', '3', '2'),
	('08', '3', '2'),
	('09', '1', '2'),
	('10', '4', '2'),
	('11', '2', '2'),
	('12', '1', '2'),
	('13', '3', '2'),
	('14', '3', '2'),
	('15', '1', '2'),
	('16', '2', '2'),
	('17', '3', '2'),
	('18', '2', '2'),
	('19', '4', '2'),
	('20', '4', '2'),
	('21', '1', '2'),
	('01', '1', '2'),
	('02', '4', '2'),
	('03', '3', '2'),
	('04', '1', '2'),
	('05', '2', '2'),
	('06', '2', '2'),
	('07', '3', '2'),
	('08', '3', '2'),
	('09', '1', '2'),
	('10', '4', '2'),
	('11', '2', '2'),
	('12', '1', '2'),
	('13', '3', '2'),
	('14', '3', '2'),
	('15', '1', '2'),
	('16', '2', '2'),
	('17', '3', '2'),
	('18', '2', '2'),
	('19', '4', '2'),
	('20', '4', '2'),
	('21', '1', '2')
;

SELECT * FROM Book_Loans;

--/ Borrower/--
CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO Borrower
	(CardNo, Name, Address, Phone)
	VALUES
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', ''),
	('01', '', '', '')
;

SELECT * FROM Borrower;