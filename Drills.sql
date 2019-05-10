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

	SELECT	
	a1.species_name as 'Name:', a2.habitat_type as 'Habitat:', a2.habitat_cost as 'Monthly cost:',
	a3.nutrition_type as 'Nutrition:', a3.nutrition_cost 'Monthly cost:'
	FROM tbl_species a1
	INNER JOIN tbl_habitat a2 ON a2.habitat_id = a1.species_habitat
	INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
	WHERE species_name = 'ghost bat'

/* DRILL 5: */
SELECT a1.species_name, a1.species_care, a2.care_id, a2.care_specialist,
FROM tbl_species a1
INNER JOIN tbl_care a2 ON a2.care_id = a1.species_care
INNER JOIN tbl_ 
WHERE species_name = 'penguin'