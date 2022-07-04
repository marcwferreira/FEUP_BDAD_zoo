PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT name, "Staff" as postition, salary
FROM Staff
UNION
SELECT name, "Visitor" as position, NULL as salary
FROM Visitor
ORDER BY position DESC, salary, name;

SELECT "Total number of people:" as MESSAGE, COUNT(*) as NUMBER FROM (SELECT name
                                                                      FROM Staff
                                                                      UNION
                                                                      SELECT name
                                                                      FROM Visitor);