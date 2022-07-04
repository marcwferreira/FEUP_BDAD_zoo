PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

-- WRONG SEX "F"
INSERT INTO Relationship (child, mother , father) VALUES (2, 3, 3); 
-- WRONG SEX "M"
INSERT INTO Relationship (child, mother , father) VALUES (3, 2, 2); 
-- CHILD AGE IS BIGGER
INSERT INTO Relationship (child, mother , father) VALUES (12, 13, 11);
--WRONG SPECIES
INSERT INTO Relationship (child, mother , father) VALUES (7, 2, NULL);