CREATE TABLE Nationalite(
idNationalite INT PRIMARY KEY,
nomPays VARCHAR(180)
);



CREATE TABLE Athlete(
idAthlete INT PRIMARY KEY,
nom VARCHAR(180),
prenom VARCHAR(180),
sexe CHAR(1),
dateNaissance DATE,
idNationalite INT references Nationalite (idNationalite)
);



CREATE TABLE Sport(
idSport INT PRIMARY KEY,
sport VARCHAR(180)
);



CREATE TABLE Epreuve(
idEpreuve INT PRIMARY KEY,
idSport INT REFERENCES Sport (idSport),
epreuve VARCHAR(180)
);




CREATE TABLE Participer(
idAthlete INT REFERENCES Athlete (idAthlete),
idEpreuve INT REFERENCES Epreuve (idEpreuve),
dateRecord DATE,
temps TIME,
PRIMARY KEY (idAthlete, idEpreuve, dateRecord)
);
