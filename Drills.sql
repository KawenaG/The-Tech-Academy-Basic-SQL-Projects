/* DRILL 1: *//
SELECT * FROM tbl_habitat;

/* DRILL 2: */
SELECT species_name
FROM tbl_species
WHERE species_order = 3
;

/* DRILL 3: */
SELECT nutrition_type 
FROM tbl_nutrition
WHERE <= 600.00
;

/* DRILL 4: */
SELECT species_name 
FROM tbl_nutrition
WHERE nutrition_id BETWEEN 2202 AND 2206
;


/* DRILL 5: */
SELECT species_name as 'Species Name:', nutrition_type as 'Nutrition Type:'
FROM tbl_species
;


/* DRILL 6: */
SELECT a1.species_name, a1.species_care, a2.care_id, a2.care_specialist,
a3.specialist_fname, a3.specialist_lname, a3.specialist_contact
FROM tbl_species a1
INNER JOIN tbl_care a2 ON a2.care_id = a1.species_care
INNER JOIN tbl_specialist a3 ON a3.specialist_id = a2.care_specialist
WHERE species_name = 'penguin'
;

/* DRILL 7: */
CREATE TABLE tbl_name (
	name_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	name_first VARCHAR(50) NOT NULL,
	name_last VARCHAR(50) NOT NULL 
	);

INSERT INTO tbl_name
	(name_first, name_last)
	VALUES
	('alec, berken'),
	('adrian, kraft'),
	('tristan, feederson'),
	('andrew, waugh'),
	('peyton, jacobs')
	;

SELECT * FROM tbl_name;

CREATE TABLE tbl_contact (
	contact_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	contact_phone VARCHAR(50) NOT NULL,
	contact_address VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_contact
	(contact_phone, contact_address)
	VALUES
	('100-200-3000', 'fake address1'),
	('100-200-3000', 'fake address2'),
	('100-200-3000', 'fake address3'),
	('100-200-3000', 'fake address4'),
	('100-200-3000', 'fake address5')
	;

SELECT * FROM tbl_contact;

CREATE TABLE Customers (
	name_id int NOT NULL, 
	name_first VARCHAR(50) NOT NULL,
	name_last VARCHAR(50) NOT NULL
	contact_id int (name_id),
	PRIMARY KEY (name_id),
	FOREIGN KEY (contact_id) REFERENCES contact(name_id)
	);