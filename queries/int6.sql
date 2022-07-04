PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--made it this way because it checks if the report is the most recent one for the animal

.mode column
.headers on
.nullvalue NULL
CREATE VIEW lastAppointment
AS
SELECT Animal.id AS anID, AppointmentReport.dateTime as dTime
FROM Animal, AppointmentReport
JOIN Appointment ON Appointment.animal = Animal.id
WHERE Appointment.id = AppointmentReport.appointment
ORDER BY AppointmentReport.dateTime DESC;

.mode column
SELECT DISTINCT Animal.id as aniID, name, age, sex, weight, species, diet, condition
FROM Animal, AppointmentReport
JOIN Appointment ON Appointment.animal = Animal.id
LEFT JOIN lastAppointment ON Animal.id = Animal.id
WHERE AppointmentReport.condition != "healthy"
AND Appointment.id = AppointmentReport.appointment
AND AppointmentReport.dateTime IN (SELECT dTime FROM (SELECT * FROM lastAppointment GROUP BY anID) WHERE anID = aniID)
ORDER BY AppointmentReport.condition ASC;

DROP VIEW lastAppointment;