PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

-- Staff
INSERT INTO Staff(name, address, contact, salary) VALUES('Pedro', 'Rua 001', 911111111, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Petra', 'Rua 002', 911111112, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Pierre', 'Rua 003', 000011113, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Paulo', 'Rua 004', 911111114, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Paula', 'Rua 005', 911111115, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Peter', 'Rua 006', 911111116, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Pan', 'Rua 007', 911111117, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Miguel', 'Rua 008', 911111118, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Martim', 'Rua 009', 911111119, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Mariana', 'Rua 000', 911111110, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Maria', 'Rua 017', 911111127, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Melissa', 'Rua 027', 911111137, 1680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Melanie', 'Rua 028', 911121137, 2680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Milena', 'Rua 029', 911114137, 2680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Mohammed', 'Rua 020', 911711137, 3680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Mustafa', 'Rua 021', 91111137, 4680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Patrick', 'Rua 345', 000001185, 1030);
INSERT INTO Staff(name, address, contact, salary) VALUES('Milindro', 'Rua 006', 911113115, 680);
INSERT INTO Staff(name, address, contact, salary) VALUES('Susana', 'Rua 006', 911113116, 680);

-- MaintenanceStaff
INSERT INTO MaintenanceStaff(id, occupation) VALUES(1, 'Maintenance');
INSERT INTO MaintenanceStaff(id, occupation) VALUES(2, 'Maintenance');
INSERT INTO MaintenanceStaff(id, occupation) VALUES(3, 'Maintenance');
INSERT INTO MaintenanceStaff(id, occupation) VALUES(4, 'Cleaning');
INSERT INTO MaintenanceStaff(id, occupation) VALUES(5, 'Cleaning');
INSERT INTO MaintenanceStaff(id, occupation) VALUES(6, 'Cleaning');

-- ManagementStaff
INSERT INTO ManagementStaff(id, rank) VALUES(13, 'Junior');
INSERT INTO ManagementStaff(id, rank) VALUES(14, 'Junior');
INSERT INTO ManagementStaff(id, rank) VALUES(15, 'Junior');
INSERT INTO ManagementStaff(id, rank) VALUES(16, 'Senior');

-- CareTaker
INSERT INTO Caretaker(id, training) VALUES(7, 'Low');
INSERT INTO Caretaker(id, training) VALUES(8, 'Low');
INSERT INTO Caretaker(id, training) VALUES(9, 'Average');
INSERT INTO Caretaker(id, training) VALUES(10, 'Average');
INSERT INTO Caretaker(id, training) VALUES(11, 'High');
INSERT INTO Caretaker(id, training) VALUES(12, 'High');

-- Feeder
INSERT INTO Feeder(id, safetyFormation) VALUES(7, 'basic');
INSERT INTO Feeder(id, safetyFormation) VALUES(8, 'basic');
INSERT INTO Feeder(id, safetyFormation) VALUES(9, 'complete');

-- Veterinarian
INSERT INTO Veterinarian(id, medicSpecialization) VALUES(10, 'Cardiology');
INSERT INTO Veterinarian(id, medicSpecialization) VALUES(11, 'General Physician');
INSERT INTO Veterinarian(id, medicSpecialization) VALUES(12, 'Surgery');

-- Structure
INSERT INTO Structure (name, structureNumber, size) VALUES ("bathroom", 1, 30);
INSERT INTO Structure (name, structureNumber, size) VALUES ("entrance", 2, 100);
INSERT INTO Structure (name, structureNumber, size) VALUES ("restaurant", 3, 100);
INSERT INTO Structure (name, structureNumber, size) VALUES ("restaurant", 4, 130);
INSERT INTO Structure (name, structureNumber, size) VALUES ("bar", 5, 80);
INSERT INTO Structure (name, structureNumber, size) VALUES ("cages", 6, 300);
INSERT INTO Structure (name, structureNumber, size) VALUES ("cages", 7, 230);
INSERT INTO Structure (name, structureNumber, size) VALUES ("hospital", 8, 150);
INSERT INTO Structure (name, structureNumber, size) VALUES ("nursery", 9, 75);
INSERT INTO Structure (name, structureNumber, size) VALUES ("administration", 10, 100);
INSERT INTO Structure (name, structureNumber, size) VALUES ("showroom", 11, 500);
INSERT INTO Structure (name, structureNumber, size) VALUES ("museum", 15, 100);
INSERT INTO Structure (name, structureNumber, size) VALUES ("bathroom", 12, 50);
INSERT INTO Structure (name, structureNumber, size) VALUES ("aquarium", 13, 300);
INSERT INTO Structure (name, structureNumber, size) VALUES ("terrarium", 14, 400);

-- WorkSpace
INSERT INTO Workspace (staff, structure) VALUES (13, 10);
INSERT INTO Workspace (staff, structure) VALUES (7, 14);
INSERT INTO Workspace (staff, structure) VALUES (8, 15);
INSERT INTO Workspace (staff, structure) VALUES (12, 4);
INSERT INTO Workspace (staff, structure) VALUES (1, 1);
INSERT INTO Workspace (staff, structure) VALUES (2, 2);
INSERT INTO Workspace (staff, structure) VALUES (3, 3);
INSERT INTO Workspace (staff, structure) VALUES (4, 4);
INSERT INTO Workspace (staff, structure) VALUES (5, 5);
INSERT INTO Workspace (staff, structure) VALUES (6, 6);
INSERT INTO Workspace (staff, structure) VALUES (1, 7);
INSERT INTO Workspace (staff, structure) VALUES (2, 8);
INSERT INTO Workspace (staff, structure) VALUES (3, 9);
INSERT INTO Workspace (staff, structure) VALUES (4, 10);
INSERT INTO Workspace (staff, structure) VALUES (5, 11);
INSERT INTO Workspace (staff, structure) VALUES (6, 12);
INSERT INTO Workspace (staff, structure) VALUES (3, 13);
INSERT INTO Workspace (staff, structure) VALUES (4, 14);



-- CleaningRepairs
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-20 15:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-21 15:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-22 14:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-28 17:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-24 20:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-25 18:30");
INSERT INTO CleaningRepairs (dateTime) VALUES ("2021-03-26 10:30");

-- StructureCleaning
INSERT INTO StructureCleaning (cleaning, structure) VALUES (1, 1);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (2, 2);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (3, 3);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (4, 4);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (5, 5);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (6, 6);
INSERT INTO StructureCleaning (cleaning, structure) VALUES (7, 7);

-- Upkeep
INSERT INTO Upkeep (cleaning, staff) VALUES ( 1, 1);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 2, 2);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 3, 3);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 4, 4);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 5, 5);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 6, 6);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 7, 5);
INSERT INTO Upkeep (cleaning, staff) VALUES ( 7, 2);

-- ServicesBuilding
INSERT INTO ServicesBuilding (id) VALUES (2);
INSERT INTO ServicesBuilding (id) VALUES (3);
INSERT INTO ServicesBuilding (id) VALUES (4);
INSERT INTO ServicesBuilding (id) VALUES (5);
INSERT INTO ServicesBuilding (id) VALUES (11);
INSERT INTO ServicesBuilding (id) VALUES (15);

-- ServicesWorker
INSERT INTO ServicesWorker (id, building, partTime) VALUES (17, 3, 0);
INSERT INTO ServicesWorker (id, building, partTime) VALUES (18, 4, 0);
INSERT INTO ServicesWorker (id, building, partTime) VALUES (19, 5, 1);

-- Ticket
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000000, "Adult", 20);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000001, "Adult", 20);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000002, "Adult", 20);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000003, "Kid", 10);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000004, "Kid", 10);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000005, "Kid", 10);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000006, "Teen", 15);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000007, "Teen", 15);
INSERT INTO Ticket (ticketNumber, type, price) VALUES (0000008, "Teen", 15);

-- Purchase
INSERT INTO Purchase (product, amount) VALUES ("water", 1.5);
INSERT INTO Purchase (product, amount) VALUES ("Candy", 1);
INSERT INTO Purchase (product, amount) VALUES ("Ticket", 10);
INSERT INTO Purchase (product, amount) VALUES ("Ribs", 13.5);
INSERT INTO Purchase (product, amount) VALUES ("Cotton Candy", 0.5);
INSERT INTO Purchase (product, amount) VALUES ("Juice", 1.5);
INSERT INTO Purchase (product, amount) VALUES ("Ice-Cream", 4.5);
INSERT INTO Purchase (product, amount) VALUES ("Souvenier", 22.45);

-- Visitor
INSERT INTO Visitor (name, age) VALUES ("Mauricio", 23);
INSERT INTO Visitor (name, age) VALUES ("Maura", 19);
INSERT INTO Visitor (name, age) VALUES ("António", 40);
INSERT INTO Visitor (name, age) VALUES ("Ana", 53);
INSERT INTO Visitor (name, age) VALUES ("Alice", 3);
INSERT INTO Visitor (name, age) VALUES ("Carla", 7);
INSERT INTO Visitor (name, age) VALUES ("Carolina", 18);
INSERT INTO Visitor (name, age) VALUES ("Cassandra", 21);

-- Acquisition
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (1, 5, 1, 1);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (2, 3, 2, 2);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (3, 2, 3, 3);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (4, 4, 4, 4);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (5, 5, 5, 5);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (5, 3, 5, 5);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (6, 11, 6, 6);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (7, 4, 7, 7);
INSERT INTO Acquisition (purchase, servicesBuilding, ticket, visitor) VALUES (8, 15, 8, 8);

-- Habitat
INSERT INTO Habitat (type, temperature) VALUES ("Savanna", 30);
INSERT INTO Habitat (type, temperature) VALUES ("Tropical Lake", 25);
INSERT INTO Habitat (type, temperature) VALUES ("Desert", 45);
INSERT INTO Habitat (type, temperature) VALUES ("Deep Ocean", 4);
INSERT INTO Habitat (type, temperature) VALUES ("Rain Forest", 32.4);
INSERT INTO Habitat (type, temperature) VALUES ("Ice", -14);
INSERT INTO Habitat (type, temperature) VALUES ("Temperate forest", 12);
INSERT INTO Habitat (type, temperature) VALUES ("Shallow Ocean", 26);
INSERT INTO Habitat (type, temperature) VALUES ("Cold Lake", 3);
INSERT INTO Habitat (type, temperature) VALUES ("Mud River", 18);

-- Aquarium
INSERT INTO Aquarium (id, salinity, ph) VALUES (2, 4.5, 5);
INSERT INTO Aquarium (id, salinity, ph) VALUES (4, 80, 2);
INSERT INTO Aquarium (id, salinity, ph) VALUES (8, 74.5, 7);
INSERT INTO Aquarium (id, salinity, ph) VALUES (9, 3.8, 10); 
INSERT INTO Aquarium (id, salinity, ph) VALUES (10, 1, 11);

-- Terrarium
INSERT INTO Terrarium (id, humidity, vegetation) VALUES (1, 50, "Cerrado");
INSERT INTO Terrarium (id, humidity, vegetation) VALUES (3, 2, "Sand dunes");
INSERT INTO Terrarium (id, humidity, vegetation) VALUES (5, 80, "Tropical");
INSERT INTO Terrarium (id, humidity, vegetation) VALUES (6, 40, "Tundra");
INSERT INTO Terrarium (id, humidity, vegetation) VALUES (7, 5.55, "Pine trees");

-- Animal Class
INSERT INTO AnimalClass (name) VALUES ("Mammals");
INSERT INTO AnimalClass (name) VALUES ("Reptiles");
INSERT INTO AnimalClass (name) VALUES ("Anphibians");
INSERT INTO AnimalClass (name) VALUES ("Crustacious");
INSERT INTO AnimalClass (name) VALUES ("Birds");
INSERT INTO AnimalClass (name) VALUES ("Fish");

-- Species
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Canis jubatus", "Lobo Guara", "Savanna", 1);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Ursus maritmus", "Polar Bear", "Ice", 1);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Amphiprion ocellaris", "Clown Fish", "Shallow Ocean", 6);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Haliaeetus leucocephalus", "Bald Eagle", "Temperate forest", 5);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Liocarcinus vernalis", "Crab", "Shallow Ocean", 4);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Iguana iguana", "Iguana", "Desert", 2);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Mantella baroni", "Golden frog", "Rain forest", 3);
INSERT INTO Species (scientificName, commonName, habitatPreference, classId) VALUES ("Urusus Pandais", "Panda", "Jungle", 1); 

-- Habitation
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (1, 1,NULL,NULL,NULL,NULL, 5, 90, 3, 40);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (2, 6, NULL, NULL, NULL, NULL, 5, 90, -40, 15);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (4, 7, 2, 125, 6, 9, 2, 100, -10, 45);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (6, 3, NULL, NULL, NULL, NULL, 0, 30, 16, 55);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (7, 5, NULL, NULL, NULL, NULL,50, 100, 20, 40);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (3, 8, 30, 140, 5, 8, NULL, NULL, 14, 30);
INSERT INTO Habitation (species, habitat, minSal, maxSal, minPh, maxPh, minHum, maxHum, minTemp, maxTemp) VALUES (5, 8, NULL, NULL, NULL, NULL, 26, 89, 4, 6.5);


-- Food
INSERT INTO Food (type, price, expirationDate) VALUES ("Bananas box 1", 2, "2021-04-13");
INSERT INTO Food (type, price, expirationDate) VALUES ("Ratos box 1", 4, "2021-05-20");
INSERT INTO Food (type, price, expirationDate) VALUES ("Bamboo box 1", 20, "2022-02-23");
INSERT INTO Food (type, price, expirationDate) VALUES ("Folhas de Papaeira box 1", 5, "2021-06-02");
INSERT INTO Food (type, price, expirationDate) VALUES ("Bife box 1", 14, "2021-04-22");
INSERT INTO Food (type, price, expirationDate) VALUES ("Pescada box 1", 17, "2021-04-08");
INSERT INTO Food (type, price, expirationDate) VALUES ("Sardinhas box 1", 10, "2021-04-23");
INSERT INTO Food (type, price, expirationDate) VALUES ("Moscas", 2, "2021-04-23");

-- Diet
INSERT INTO Diet (diet) VALUES ("Carnivour");
INSERT INTO Diet (diet) VALUES ("Herbivor");
INSERT INTO Diet (diet) VALUES ("Vegetarian");

-- DietFood

INSERT INTO DietFood (diet, food) VALUES (3,1);
INSERT INTO DietFood (diet, food) VALUES (2,1);
INSERT INTO DietFood (diet, food) VALUES (1,2);
INSERT INTO DietFood (diet, food) VALUES (3,3);
INSERT INTO DietFood (diet, food) VALUES (1,4);
INSERT INTO DietFood (diet, food) VALUES (2,4);
INSERT INTO DietFood (diet, food) VALUES (1,5);
INSERT INTO DietFood (diet, food) VALUES (1,6);
INSERT INTO DietFood (diet, food) VALUES (1,7);
INSERT INTO DietFood (diet, food) VALUES (2,7);
INSERT INTO DietFood (diet, food) VALUES (2,8);

-- Animal
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Bolinha", 2, "F",26, 1, 1, 1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Maria Loba", 7, "F" ,28, 1, NULL,  1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Lobao", 8, "M", 34, 1, 2, 1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Branquinho", 7, "M",34, 2, NULL, 1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Nemo", 2, "M",2, 3, 3, 2);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Marlin", 3, "M",2, 3, 3, 2);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Benfica", 6, "M", 40, 4, 4, 1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Sebastião", 9, "M",5, 5, NULL, 2);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Jack", 1, "M", 8, 6, 6, 1);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Sleepy", 2,"F", 1, 7, 2, 2);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Jung", 4, "M",120, 8, 8, 3);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Patchy", 5, "F",90, 8, 8, 3);
INSERT INTO Animal (name, age, sex, weight, species, adopter, diet) VALUES ("Fifi", 1, "F",30, 8, 8, 3);


-- Relationship
INSERT INTO Relationship (child, mother , father) VALUES (1, 2, 3);
INSERT INTO Relationship (child, mother , father) VALUES (13, 12, 11);
INSERT INTO Relationship (child, mother , father) VALUES (5, NULL, 6);

--Feeding
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 6, 5, 7, 1);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 5, 5, 8, 2);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 4, 5, 8, 3);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 8, 6, 8, 4);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 1, 7, 9, 5); 
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 1, 7, 7, 6);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 3, 2, 9, 7);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 1, 6, 9, 8);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 2, 2, 7, 9);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 1, 8, 8, 10);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 15, 3, 7, 11);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 15, 3, 7, 12);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-23", 5, 3, 7, 13);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-24", 1, 6, 8, 5);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-24", 1, 6, 8, 6);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-24", 6, 1, 7, 13);
INSERT INTO Feeding (dateTime, quantity , food, feeder, animal) VALUES ("2021-04-25", 10, 4, 7, 13);


-- Event
INSERT INTO Event(type, dateTime) VALUES("exposition", "2021-03-15");
INSERT INTO Event(type, dateTime) VALUES("workshop", "2021-03-02");
INSERT INTO Event(type, dateTime) VALUES("guided visit", "2021-04-05");
INSERT INTO Event(type, dateTime) VALUES("exposition", "2021-01-23");

--StrutureHabitat
INSERT INTO StructureHabitat(habitat, structure) VALUES (1,6);
INSERT INTO StructureHabitat(habitat, structure) VALUES (2,7);
INSERT INTO StructureHabitat(habitat, structure) VALUES (3,6);
INSERT INTO StructureHabitat(habitat, structure) VALUES (4,7);
INSERT INTO StructureHabitat(habitat, structure) VALUES (5,6);
INSERT INTO StructureHabitat(habitat, structure) VALUES (6,6);
INSERT INTO StructureHabitat(habitat, structure) VALUES (7,6);
INSERT INTO StructureHabitat(habitat, structure) VALUES (8,7);
INSERT INTO StructureHabitat(habitat, structure) VALUES (9,7);
INSERT INTO StructureHabitat(habitat, structure) VALUES (10,7);

--StruteServiceBuilding
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (2,12);
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (3,3);
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (4,4);
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (5,5);
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (11,8);
INSERT INTO StructureServicesBuilding(servicesbuilding, structure) VALUES (15,10);

-- EventStructure
INSERT INTO EventStructure (event, structure) VALUES (1, 11);
INSERT INTO EventStructure (event, structure) VALUES (2, 12);
INSERT INTO EventStructure (event, structure) VALUES (3, 6);
INSERT INTO EventStructure (event, structure) VALUES (4, 14);

-- EventVisitor
INSERT INTO EventVisitor (event, visitor) VALUES (1, 1);
INSERT INTO EventVisitor (event, visitor) VALUES (1, 2);
INSERT INTO EventVisitor (event, visitor) VALUES (1, 8);
INSERT INTO EventVisitor (event, visitor) VALUES (2, 3);
INSERT INTO EventVisitor (event, visitor) VALUES (2, 4);
INSERT INTO EventVisitor (event, visitor) VALUES (3, 3);
INSERT INTO EventVisitor (event, visitor) VALUES (3, 2);
INSERT INTO EventVisitor (event, visitor) VALUES (3, 7);
INSERT INTO EventVisitor (event, visitor) VALUES (4, 8);
INSERT INTO EventVisitor (event, visitor) VALUES (4, 1);

-- EventAnimal
INSERT INTO EventAnimal (event, animal) VALUES (3, 1);
INSERT INTO EventAnimal (event, animal) VALUES (3, 2);
INSERT INTO EventAnimal (event, animal) VALUES (3, 3);
INSERT INTO EventAnimal (event, animal) VALUES (3, 4);

-- EventServiceWorker
INSERT INTO EventServiceWorker (event, worker, building) VALUES (1, 18, 4);
INSERT INTO EventServiceWorker (event, worker, building) VALUES (2, 17, 3);
INSERT INTO EventServiceWorker (event, worker, building) VALUES (3, 19, 5);
INSERT INTO EventServiceWorker (event, worker, building) VALUES (4, 18, 4);

-- EventManagementWorker
INSERT INTO EventManagementWorker (event, admin) VALUES (1, 13);
INSERT INTO EventManagementWorker (event, admin) VALUES (2, 14);
INSERT INTO EventManagementWorker (event, admin) VALUES (3, 15);
INSERT INTO EventManagementWorker (event, admin) VALUES (4, 16);


-- Appointment
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-03-28 9:30", 3);
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-04-20 17:00", 5);
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-03-15 14:00", 1);
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-03-08 8:30", 2);
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-04-17 10:45", 7);
INSERT INTO Appointment (dateTime, animal) VALUES ("2021-04-13 18:15", 4);
--INSERT INTO Appointment (dateTime, animal) VALUES ("2021-04-21 17:00", 5);


-- VetAppointment
INSERT INTO VetAppointment (vet, appointment) VALUES (11, 1);
INSERT INTO VetAppointment (vet, appointment) VALUES (12, 2);
INSERT INTO VetAppointment (vet, appointment) VALUES (12, 3);
INSERT INTO VetAppointment (vet, appointment) VALUES (10, 4);
INSERT INTO VetAppointment (vet, appointment) VALUES (11, 5);
INSERT INTO VetAppointment (vet, appointment) VALUES (11, 6);
--INSERT INTO VetAppointment (vet, appointment) VALUES (12, 7);

-- AppointmentReport 
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-03-28 10:00", "healthy", 1);
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-04-21 8:00", "fever", 2);
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-03-25 15:00", "toothe pain", 3);
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-03-08 10:00", "healthy", 4);
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-04-17 12:00", "healthy", 5);
INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-04-13 19:30", "healthy", 6);
--INSERT INTO AppointmentReport(dateTime, condition, appointment) VALUES ("2021-04-22 8:00", "healthy", 7);
