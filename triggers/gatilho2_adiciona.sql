PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

CREATE TRIGGER check_contact AFTER UPDATE OF contact ON Staff
WHEN new.contact < 0 OR new.contact > 999999999
BEGIN
    SELECT RAISE(ABORT, 'NEW CONTACT NUMBER NOT VALID');
END;