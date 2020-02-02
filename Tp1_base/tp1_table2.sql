CREATE TABLE Ville(
nomVille VARCHAR(180) PRIMARY KEY,
codeCommune INT,
nombreHabitants INT
);


CREATE TABLE Pizzeria(
idPizzeria INT PRIMARY KEY,
nomVille VARCHAR(180) REFERENCES Ville (nomVille),
nomPizzeria VARCHAR(180),
nombreLivreursMax INT
);


CREATE TABLE Livreur(
idLivreur INT PRIMARY KEY,
nomVille VARCHAR(180) REFERENCES Ville (nomVille),
prenom VARCHAR(180),
nom VARCHAR(180),
idPizzeria INT REFERENCES Pizzeria (idPizzeria)
);

CREATE TABLE Livrer(
idPizzeria INT REFERENCES Pizzeria (idPizzeria),
nomVille VARCHAR(180) REFERENCES Ville (nomVille),
PRIMARY KEY (idPizzeria, nomVille)
);

CREATE TABLE Modele(
nomModele VARCHAR(180) PRIMARY KEY,
marque VARCHAR(180),
puissance INT
);

CREATE TABLE Vehicule(
idVehicule INT PRIMARY KEY,
idPizzeria INT REFERENCES Pizzeria (idPizzeria),
nomModele VARCHAR(180) REFERENCES Modele (nomModele),
capacite INT
);






