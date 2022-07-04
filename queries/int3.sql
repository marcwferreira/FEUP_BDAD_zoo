PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--An animal may appear one more time if he eats more than one type of food

.mode column
.headers on
.nullvalue NULL
SELECT animal as aniID, Animal.name as name, food as foodID, Food.type as type, quantity, feeder
FROM Feeding, Animal, Food
WHERE Feeding.animal = Animal.id AND Feeding.food = Food.id
ORDER BY food ASC;