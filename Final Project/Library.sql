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
	('Allen & Unwin', '96 Creek St. Maplewood, CA 07040', '808-911-0000'),
	('Little, Brown and Company', '918 Beech Street South Windsor, CT 06074', '808-123-4576'),
	('W.W. Norton and Company', '99 West Liberty Street Joliet, IL 60435', '331-578-9210'),
	('Houghton Mifflin Harcourt', '181A Poor House St. New Berlin, WI 53151', '235-667-9781'),
	('J. B. Lippincott & Co.', '19 Wild Rose Ave. North Bergen, NJ 07047', '352-901-9012'),
	('The Super Legitimate Publishing Company', '644 East 3rd Ave. Columbus, GA 31904', '230-542-5618'),
	('Tell Everyone Publishing', '70 Somerset St. Poughkeepsie, NY 12601', '132-459-9865'),
	('Viking Press', '134 W. Cooper Dr. Canyon Country, CA 91387', '602-198-1342'),
	('People Who Like Cats', '9734 Valley Lane Frankfort, KY 40601', '584-687-1295'),
	('Something Creative', '2 Columbia St. North Haven, CT 06473', '869-597-1920'),
	('Woof Automotive', '763 Hillcrest Drive Phoenix, AZ 85021', '950-329-3920'),
	('Two Banana Slugs', '9080 Beach Lane San Angelo, TX 76901', '809-543-5498'),
	('Somewhere in Russia', '7252 Buttonwood Rd. Garden City, NY 11530', '329-549-9210'),
	('Doubleday', '215 8th St. Akron, OH 44312', '894-432-8954'),
	('Fruit Connoisseurs', '236 Hanover Dr. Raleigh, NC 27603', '458-320-8129'),
	('The Oven Publishing', '91 Miles Ave. Zionsville, IN 46077', '843-906-4380'),
	('ZZZ Inc.', '85 6th St. Oviedo, FL 32765', '899-129-1250'),
	('Young Brothers Inc.', '72 Virginia Ave. Danbury, CT 06810', '389-1246-9087'),
	('Basic Publishers', '976 Windfall Lane Vincentown, NJ 08088', '384-659-1902'),
	('Why Not Company', '413 Vine Street Bethel Park, PA 15102', '498-129-5409'),
	('The Tech Academy', '71 N. Smith Store Dr. Uniondale, NY 11553', '349-3050-9203')
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
	('01', '1', '01', '1/3', '1/10'),
	('02', '4', '02', '2/15', '2/22'),
	('03', '3', '03', '3/9', '3/16'),
	('04', '1', '04', '4/1', '4/8'),
	('05', '2', '05', '3/12,', '3/19'),
	('06', '2', '06', '1/14', '1/21'),
	('07', '3', '07', '6/22,', '6/29'),
	('08', '3', '08', '2/27', '3/6'),
	('09', '1', '01', '3/1', '3/8'),
	('10', '4', '02', '5/2', '5/9'),
	('11', '2', '03', '12/1', '12/8'),
	('12', '1', '04', '3/12','3/19'),
	('13', '3', '05', '4/20','4/27'),
	('14', '3', '06', '3/15','3/22'),
	('15', '1', '07', '1/1','1/8'),
	('16', '2', '08', '2/2','2/9'),
	('17', '3', '01', '3/3','3/10'),
	('18', '2', '02', '4/4','4/11'),
	('19', '4', '03', '5/5','5/12'),
	('20', '4', '04', '6/6','6/13'),
	('21', '1', '05', '7/7','7/14'),
	('01', '1', '06', '8/8','8/15'),
	('02', '4', '07', '9/9','9/16'),
	('03', '3', '08', '10/10','10/17'),
	('04', '1', '01', '11/11','11/18'),
	('05', '2', '02', '12/12','12/19'),
	('06', '2', '03', '1/2','1/9'),
	('07', '3', '04', '1/3','1/10'),
	('08', '3', '05', '1/4','1/11'),
	('09', '1', '06', '1/5','1/12'),
	('10', '4', '07', '2/4','2/11'),
	('11', '2', '08', '2/5','2/12'),
	('12', '1', '01', '2/6','2/13'),
	('13', '3', '02', '4/12','4/19'),
	('14', '3', '03', '9/3','9/10'),
	('15', '1', '04', '10/1','10/8'),
	('16', '2', '05', '12/1','12/8'),
	('17', '3', '06', '11/6','11/13'),
	('18', '2', '07', '7/4','7/11'),
	('19', '4', '08', '5/2','5/9'),
	('20', '4', '02', '10/15','10/22'),
	('21', '1', '01', '8/1','8/7')
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
	('01', 'Alexis Delnero', '134 W. Cooper Dr. Canyon Country, CA 91387', '602-198-1342'),
	('02', 'Tommie Grenz', '9734 Valley Lane Frankfort, KY 40601', '584-687-1295'),
	('03', 'Hayden Wester', '2 Columbia St. North Haven, CT 06473', '869-597-1920'),
	('04', 'Kevin Risch', '763 Hillcrest Drive Phoenix, AZ 85021', '950-329-3920'),
	('05', 'Fritz Desouza', '9080 Beach Lane San Angelo, TX 76901', '809-543-5498'),
	('06', 'Randall Umana', '7252 Buttonwood Rd. Garden City, NY 11530', '329-549-9210'),
	('07', 'Daron Hills', '215 8th St. Akron, OH 44312', '894-432-8954'),
	('08', 'Lance Magoon', '236 Hanover Dr. Raleigh, NC 27603', '458-320-8129')
;

SELECT * FROM Borrower;