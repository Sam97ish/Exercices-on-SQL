CREATE TABLE DuType(
    nomPokemon VARCHAR(180) REFERENCES PokemonCapture(nomPokemon),
    idType INT REFERENCES Type(idType),
    PRIMARY KEY (nomPokemon, idType)
)

CREATE TABLE Type(
    idType INT PRIMARY KEY,
    nomType VARCHAR(180)
)

CREATE TABLE PokemonCapture(
    NumeroPokemon INT,
    nomPokemon VARCHAR(180),
    Espece VARCHAR(180),
    Taille INT,
    Poids INT,
    legendaire VARCHAR(180),
    attack VARCHAR(180),
    PV VARCHAR(180)
'whice one will be primary? all of them not stable'
)
