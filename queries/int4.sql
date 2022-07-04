PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT "Money spent on food in the last month",SUM(price*quantity)
FROM Food, Feeding
WHERE julianday(Feeding.dateTime) > julianday('now','start of month','-1 month')
AND Feeding.food = Food.id;