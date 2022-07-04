PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT Visitor.name as name,
       visitor.age as age,
       SUM(amount) as "totalAmountSpent", 
       Animal.name as animal,
       Species.commonName as species
FROM Visitor
LEFT OUTER JOIN Acquisition ON Visitor.id = Acquisition.visitor
LEFT OUTER JOIN Purchase ON Acquisition.purchase = purchase.id
LEFT OUTER JOIN Animal ON Visitor.id = Animal.adopter
LEFT OUTER JOIN Species ON Animal.species = Species.id
GROUP BY Visitor.name;

