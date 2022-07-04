PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT Staff.id as ID, 
       Staff.name as name, 
       substr('000000000'|| Staff.contact, -9, 9) as contact,
       Structure.id as WorkplaceID,
       Structure.name as WorkplaceName,
       Structure.structureNumber as buildingNumber
FROM Staff, Structure
LEFT JOIN Workspace
WHERE Workspace.staff = Staff.id
AND Workspace.structure = Structure.id
ORDER BY ID, WorkplaceID;

