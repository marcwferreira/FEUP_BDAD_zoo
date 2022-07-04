PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--need cleaning YES if more than 60 days without cleanig (used this date because of our Povoar.sql)

.mode column
.headers on
.nullvalue NULL
SELECT name, 
       structureNumber,
       dateTime, 
       MaintenanceStaff.id as Cleaner,
       CASE WHEN strftime('%J','now') - strfTime('%J',dateTime) > 60
       THEN 'YES'
       ELSE 'NO'
       END AS
       NeedCleaning
FROM Structure,CleaningRepairs, MaintenanceStaff, Upkeep
INNER JOIN StructureCleaning on StructureCleaning.structure = structure.id
AND StructureCleaning.cleaning = CleaningRepairs.id
AND Upkeep.cleaning = CleaningRepairs.id
AND Upkeep.staff = MaintenanceStaff.id
GROUP BY dateTime
ORDER BY dateTime ASC;