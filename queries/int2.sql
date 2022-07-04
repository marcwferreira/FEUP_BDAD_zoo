PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT DISTINCT Event.id as id,
                Event.type as type,
                Event.dateTime as day, 
                EventStructure.structure as buildingID, 
                Structure.name as buildingName,
                ManagementStaff.id as adminID,
                ManagementStaff.rank as adminRank
FROM Event, EventStructure, Structure, EventManagementWorker, ManagementStaff
WHERE strftime('%Y',dateTime) = '2021'
AND strftime('%m',dateTime) = '04'
AND Event.id = EventStructure.event
AND Structure.id = EventStructure.structure
AND ManagementStaff.id = EventManagementWorker.admin
AND Event.id = EventManagementWorker.event
ORDER BY dateTime ASC, type;