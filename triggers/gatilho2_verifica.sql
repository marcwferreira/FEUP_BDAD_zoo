PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

UPDATE Staff
SET contact = -2
WHERE id = 2;

UPDATE Staff
SET CONTACT = 99999999999
WHERE id = 3;