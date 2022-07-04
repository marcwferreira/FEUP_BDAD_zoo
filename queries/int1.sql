PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT id, 
       name, 
       ifnull(Relationship.mother,'N/A') as mother, 
       ifnull(Relationship.father,'N/A') as father
FROM Animal,Relationship
WHERE Relationship.child = Animal.id
ORDER BY id ASC;

