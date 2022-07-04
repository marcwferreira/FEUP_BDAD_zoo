PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.mode column
.headers on
.nullvalue NULL
SELECT DISTINCT Habitation.species as speciesID,
                Species.scientificName as speciesScientificName,  
                Species.CommonName as speciesCommonName,
                Aquarium.id as habitatID,
                Habitat.type as habitatName,
                "Aquarium" as type,
                Aquarium.salinity as salinity,
                Aquarium.ph as pH,
                NULL as humidity,
                NULL as vegetation
FROM Habitation, Species, Aquarium, Habitat
WHERE Habitation.habitat = Aquarium.id
AND Habitation.species = Species.id
AND Habitat.id = Aquarium.id 
UNION
SELECT DISTINCT Habitation.species as speciesID,
                Species.scientificName as speciesScientificName,  
                Species.CommonName as speciesCommonName,
                Terrarium.id as habitatID,
                Habitat.type as habitatName,
                "Terrarium" as type,
                NULL as salinity,
                NULL as pH,
                Terrarium.humidity as humidity,
                Terrarium.vegetation as vegetation
FROM Habitation, Species, Terrarium, Habitat
WHERE Habitation.habitat = Terrarium.id
AND Habitation.species = Species.id
AND Habitat.id = Terrarium.id
ORDER BY type, speciesID;