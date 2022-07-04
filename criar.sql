PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS MaintenanceStaff;
DROP TABLE IF EXISTS ManagementStaff;
DROP TABLE IF EXISTS Caretaker;
DROP TABLE IF EXISTS Feeder;
DROP TABLE IF EXISTS Veterinarian;
DROP TABLE IF EXISTS Structure;
DROP TABLE IF EXISTS WorkSpace;
DROP TABLE IF EXISTS CleaningRepairs;
DROP TABLE IF EXISTS StructureCleaning;
DROP TABLE IF EXISTS Upkeep;
DROP TABLE IF EXISTS ServicesBuilding;
DROP TABLE IF EXISTS ServicesWorker;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Visitor;
DROP TABLE IF EXISTS Acquisition;
DROP TABLE IF EXISTS Habitat;
DROP TABLE IF EXISTS Aquarium;
DROP TABLE IF EXISTS Terrarium;
DROP TABLE IF EXISTS AnimalClass;
DROP TABLE IF EXISTS Species;
DROP TABLE IF EXISTS Habitation;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS Relationship;
DROP TABLE IF EXISTS Event;
DROP TABLE IF EXISTS StructureHabitat;
DROP TABLE IF EXISTS StructureServicesBuilding;
DROP TABLE IF EXISTS EventStructure;
DROP TABLE IF EXISTS EventVisitor;
DROP TABLE IF EXISTS EventAnimal;
DROP TABLE IF EXISTS EventServiceWorker;
DROP TABLE IF EXISTS EventManagementWorker;
DROP TABLE IF EXISTS Food;
DROP TABLE IF EXISTS Diet;
DROP TABLE IF EXISTS DietFood;
DROP TABLE IF EXISTS Feeding;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS VetAppointment;
DROP TABLE IF EXISTS AppointmentReport;

CREATE TABLE Staff(
    id      INTEGER PRIMARY KEY,
    name    TEXT NOT NULL,
    address TEXT NOT NULL,
    contact INTEGER NOT NULL UNIQUE,
    salary  REAL CHECK(salary>0.0)
);

CREATE TABLE MaintenanceStaff(
    id         INTEGER PRIMARY KEY,
    occupation TEXT NOT NULL,
    FOREIGN KEY(id) REFERENCES Staff ON DELETE RESTRICT ON UPDATE CASCADE
); 

CREATE TABLE ManagementStaff(
   id   INTEGER PRIMARY KEY,
   rank TEXT NOT NULL,
   FOREIGN KEY(id) REFERENCES Staff ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Caretaker(
    id        INTEGER PRIMARY KEY,
    training  TEXT,
    FOREIGN KEY(id) REFERENCES Staff ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Feeder(
    id              INTEGER PRIMARY KEY,
    safetyFormation TEXT DEFAULT "Basic",
    FOREIGN KEY(id) REFERENCES Caretaker ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Veterinarian(
    id                  INTEGER PRIMARY KEY,
    medicSpecialization TEXT DEFAULT "General",
    FOREIGN KEY(id)     REFERENCES Caretaker ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Structure(
    id              INTEGER PRIMARY KEY,
    name            TEXT,
    structureNumber INTEGER CHECK(structureNumber>=0) NOT NULL UNIQUE,
    size            REAL NOT NULL
);

CREATE TABLE Workspace(
    staff                   INTEGER NOT NULL,
    structure               INTEGER NOT NULL,
    FOREIGN KEY(staff)      REFERENCES Staff ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(structure)  REFERENCES Structure ON DELETE RESTRICT ON UPDATE RESTRICT,
    PRIMARY KEY(staff, structure)
);

CREATE TABLE CleaningRepairs(
    id        INTEGER PRIMARY KEY,
    dateTime  TEXT NOT NULL
);

CREATE TABLE StructureCleaning(
    cleaning               INTEGER NOT NULL,
    structure              INTEGER NOT NULL,
    FOREIGN KEY(cleaning)  REFERENCES CleaningRepairs ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(structure) REFERENCES Structure ON DELETE RESTRICT ON UPDATE RESTRICT,
    PRIMARY KEY(cleaning, structure)
);

CREATE TABLE Upkeep(
    cleaning              INTEGER NOT NULL,
    staff                 INTEGER NOT NULL,
    FOREIGN KEY(cleaning) REFERENCES CleaningRepairs ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(staff)    REFERENCES MaintenanceStaff ON DELETE RESTRICT ON UPDATE RESTRICT,
    PRIMARY KEY(cleaning, staff)
);

CREATE TABLE ServicesBuilding(
    id INTEGER PRIMARY KEY
);

CREATE TABLE ServicesWorker(
    id                      INTEGER NOT NULL UNIQUE,
    building                INTEGER NOT NULL,
    partTime                INTEGER CHECK(partTime==0 or partTime==1) NOT NULL,
    FOREIGN KEY(id)         REFERENCES Staff ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(building)   REFERENCES ServicesBuilding ON DELETE RESTRICT ON UPDATE RESTRICT,
    PRIMARY KEY(id, building)
);

CREATE TABLE Ticket(
    id              INTEGER PRIMARY KEY,
    ticketNumber    INTEGER NOT NULL UNIQUE,
    type            TEXT DEFAULT "Adult",
    price           REAL CHECK(price>=0.0) DEFAULT 20
);

CREATE TABLE Purchase(
    id      INTEGER PRIMARY KEY,
    product TEXT NOT NULL,
    amount  REAL CHECK(amount>=0.0) NOT NULL
);

CREATE TABLE Visitor(
    id      INTEGER PRIMARY KEY,
    name    TEXT NOT NULL,
    age     INTEGER CHECK(age >=0) NOT NULL
);

CREATE TABLE Acquisition(
    purchase            INTEGER NOT NULL,
    servicesBuilding    INTEGER NOT NULL,
    ticket              INTEGER NOT NULL,
    visitor             INTEGER NOT NULL,
    PRIMARY KEY(purchase, servicesBuilding, ticket),
    FOREIGN KEY(purchase)           REFERENCES Purchase ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(servicesBuilding)   REFERENCES ServicesBuilding ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(ticket)             REFERENCES Ticket ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(visitor)            REFERENCES Visitor ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Habitat(
    id          INTEGER PRIMARY KEY,
    type        TEXT NOT NULL,
    temperature REAL NOT NULL
);

CREATE TABLE Aquarium(
    id          INTEGER PRIMARY KEY,
    salinity    REAL CHECK(salinity>=0.0) NOT NULL,
    ph          REAL CHECK(ph>=0.0 and ph<=14.0) NOT NULL,
    FOREIGN KEY(id) REFERENCES Habitat ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Terrarium(
    id          INTEGER PRIMARY KEY,
    humidity    REAL CHECK(humidity>=0.0 and humidity<=100.0) NOT NULL,
    vegetation  REAL NOT NULL,
    FOREIGN KEY(id) REFERENCES Habitat ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE AnimalClass(
    id      INTEGER PRIMARY KEY,
    name    TEXT NOT NULL UNIQUE
);

CREATE TABLE Species(
    id                  INTEGER PRIMARY KEY,
    scientificName      TEXT NOT NULL UNIQUE,
    commonName          TEXT,
    habitatPreference   TEXT NOT NULL,
    classId            INTEGER NOT NULL,
    FOREIGN KEY(classId) REFERENCES AnimalClass ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Habitation(
    species INTEGER NOT NULL,
    habitat INTEGER NOT NULL,
    minTemp REAL NOT NULL,
    maxTemp REAL NOT NULL,
    minSal  REAL,
    maxSal  REAL,
    minPh   REAL,
    maxPh   REAL,
    minHum  REAL,
    maxHum  REAL,
    PRIMARY KEY(species, habitat),
    FOREIGN KEY(species) REFERENCES Species ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(habitat) REFERENCES Habitat ON DELETE RESTRICT ON UPDATE RESTRICT,
    CHECK(minSal>=0.0 and minSal<=maxSal),
    CHECK(maxSal>=0.0)
    CHECK(minPh>=0.0 and minPh<=14.0 and minPh<=maxPh),
    CHECK(maxPh>=0.0 and maxPh<=14.0),
    CHECK(minHum>=0.0 and minHum<=100 and minHum<=maxHum),
    CHECK(maxHum>=0.0 and maxHum<=100),
    CHECK(minTEMP<=maxTemp)
);

CREATE TABLE Animal(
    id      INTEGER PRIMARY KEY,
    name    TEXT,
    age     INTEGER CHECK(age >= 0) NOT NULL,
    sex     CHAR NOT NULL,
    weight  REAL NOT NULL,
    species INTEGER NOT NULL,
    diet    INTEGER NOT NULL,
    adopter INTEGER,
    FOREIGN KEY(species) REFERENCES Species ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(diet)    REFERENCES Diet ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(adopter) REFERENCES Visitor ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Relationship(
    child  INTEGER PRIMARY KEY,
    mother INTEGER,
    father INTEGER,
    FOREIGN KEY(mother) REFERENCES Animal ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(father) REFERENCES Animal ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Event(
    id          INTEGER PRIMARY KEY,
    type        TEXT NOT NULL,
    dateTime    TEXT NOT NULL
);

CREATE TABLE StructureHabitat(
    id        INTEGER PRIMARY KEY,
    habitat   INTEGER,
    structure INTEGER,
    FOREIGN KEY(habitat)  REFERENCES Habitat ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(structure) REFERENCES Structure ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE StructureServicesBuilding(
    id                 INTEGER PRIMARY KEY,
    servicesbuilding   INTEGER,
    structure          INTEGER,
    FOREIGN KEY(servicesbuilding)  REFERENCES ServicesBuilding ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(structure) REFERENCES Structure ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE EventStructure(
    event      INTEGER NOT NULL,
    structure  INTEGER NOT NULL,
    PRIMARY KEY(event,structure),
    FOREIGN KEY(event)     REFERENCES Event ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(structure) REFERENCES Structure ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE EventVisitor(
    event   INTEGER NOT NULL,
    visitor INTEGER NOT NULL,
    PRIMARY KEY(event, visitor),
    FOREIGN KEY(event)   REFERENCES Event ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(visitor) REFERENCES Visitor ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE EventAnimal(
    event  INTEGER NOT NULL,
    animal INTEGER NOT NULL,
    PRIMARY KEY(event, animal),
    FOREIGN KEY(event)  REFERENCES Event ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(animal) REFERENCES Animal ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE EventServiceWorker(
    event  INTEGER NOT NULL,
    worker INTEGER NOT NULL,
    building  INTEGER NOT NULL,
    PRIMARY KEY(event, worker),
    FOREIGN KEY(event)  REFERENCES Event ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(worker,building) REFERENCES ServicesWorker(id,building) ON DELETE RESTRICT ON UPDATE RESTRICT

);

CREATE TABLE EventManagementWorker(
    event  INTEGER NOT NULL,
    admin INTEGER NOT NULL,
    PRIMARY KEY(event, admin),
    FOREIGN KEY(event)  REFERENCES Event ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(admin) REFERENCES ManagementStaff ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Food(
    id              INTEGER PRIMARY KEY,
    type            TEXT NOT NULL,
    price           INTEGER CHECK(price >=0) NOT NULL,
    expirationDate  TEXT NOT NULL
);

CREATE TABLE Diet(
    id              INTEGER PRIMARY KEY,
    diet            TEXT NOT NULL
);  

CREATE TABLE DietFood(
    diet            INTEGER NOT NULL,
    food            INTEGER NOT NULL,
    PRIMARY KEY(diet, food),
    FOREIGN KEY(diet) REFERENCES Diet ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(food) REFERENCES Food ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Feeding(
    id              INTEGER PRIMARY KEY,
    dateTime        TEXT NOT NULL,
    quantity        REAL CHECK(quantity>=0.0) NOT NULL,
    food            INTEGER NOT NULL,
    feeder          INTEGER NOT NULL,
    animal          INTEGER NOT NULL,
    FOREIGN KEY(food)   REFERENCES Food ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(feeder) REFERENCES Feeder ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(animal) REFERENCES Animal ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Appointment(
    id             INTEGER PRIMARY KEY,
    dateTime       TEXT NOT NULL,
    animal         INTEGER NOT NULL,
    FOREIGN KEY(animal) REFERENCES Animal ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE VetAppointment(
    vet            INTEGER NOT NULL,
    appointment    INTEGER NOT NULL,
    PRIMARY KEY(vet, appointment),
    FOREIGN KEY(vet)         REFERENCES Veterinarian ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY(appointment) REFERENCES Appointment ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE AppointmentReport(
    id             INTEGER PRIMARY KEY,
    dateTime       TEXT NOT NULL,
    condition      TEXT DEFAULT "Healthy",
    appointment    INTEGER NOT NULL,
    FOREIGN KEY(appointment) REFERENCES Appointment ON DELETE RESTRICT ON UPDATE RESTRICT
);

