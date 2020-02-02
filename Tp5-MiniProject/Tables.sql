CREATE TABLE Espece(
    idEspece INT PRIMARY KEY,
    NumeroEspece INT,
    nomEspece VARCHAR(180),
    nomPokemon VARCHAR(180)	
);

CREATE TABLE Pokemon(
    idEspece INT PRIMARY KEY REFERENCES Espace(idEspace),
    isLegendaire VARCHAR(180)   
);

CREATE TABLE DuType(
    idEspece INT REFERENCES Espece(idEspece),
    idType INT REFERENCES Type(idType),
    PRIMARY KEY (idEspece,idType)
);

CREATE TABLE Types(
    idType INT PRIMARY KEY,
    nomType VARCHAR(180)
);

CREATE TABLE PokemonCapture(
    idEspece INT PRIMARY KEY REFERENCES Espece(idEspece),
    niveau INT,
    taille INT,
    poids INT,
    attaqueSign VARCHAR(180),
    pV int
);

