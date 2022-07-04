PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

CREATE TRIGGER check_relation_mother AFTER INSERT ON RelationShip
WHEN (SELECT age FROM Animal WHERE new.child) > ifnull((SELECT age FROM Animal WHERE new.mother),0)
OR   (SELECT species FROM Animal WHERE new.child) != (SELECT species FROM Animal WHERE new.mother)
OR   (SELECT sex FROM Animal WHERE new.mother) != "F"
OR   (SELECT sex FROM Animal WHERE new.mother) != NULL
BEGIN
    SELECT RAISE(ABORT, 'RELATIONSHIP NOT VALID');
END;

CREATE TRIGGER check_relation_father AFTER INSERT ON RelationShip
WHEN (SELECT age FROM Animal WHERE new.child) > ifnull((SELECT age FROM Animal WHERE new.father),0)
OR   (SELECT species FROM Animal WHERE new.child) != (SELECT species FROM Animal WHERE new.father)
OR   (SELECT sex FROM Animal WHERE new.father) != "M"
OR   (SELECT sex FROM Animal WHERE new.father) != NULL
BEGIN
    SELECT RAISE(ABORT, 'RELATIONSHIP NOT VALID');
END;