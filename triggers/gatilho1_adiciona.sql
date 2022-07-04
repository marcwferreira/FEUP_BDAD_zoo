PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

CREATE TRIGGER cancel_purchase DELETE 
ON Purchase 
BEGIN
DELETE FROM Acquisition WHERE purchase = OLD.id;
END;