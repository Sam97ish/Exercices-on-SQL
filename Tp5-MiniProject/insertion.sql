-- Supprimer les n-uplets de toutes les tables avant de les remplir
DELETE FROM Espece;
DELETE FROM Pokemon;
DELETE FROM DuType;
DELETE FROM Types;
DELETE FROM PokemonCapture;


-- n-uplets de la table Espece
INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (1,4,"Flamme","Salameche");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (2,6,"Flamme","Dracaufeu");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (3,25,"Souris","Pikachu");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (4,144,"Glaciaire","Artikodin");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (5,150,"Genetique","Mewtwo");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (6,132,"Morphing","Metamorph");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (7,146,"Flamme","Sulfura");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (8,7,"Carapace","Carapuce");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (9,1,"Graine","Bulbizarre");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (10,58,"Chienfeu","Caninos");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (11,128,"Buffle","Tauros");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (12,56,"Porsinge","Ferosinge");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (13,95,"Serpenroc","Onix");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (14,97,"Hypnose","Hypnomad");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (15,145,"Electrique","Electhor");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (16,151,"Genetique","Mew");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (17,9,"Carapace","Tortank");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (18,8,"Carapace","Carabaffe");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (19,59,"Chienfeu","Arcanin");      

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (20,57,"Porsinge","Colossinge");

INSERT INTO Espece(idEspece,NumeroEspece,nomEspece,nomPokemon)
VALUES (21,16,"Oiseau","Roucool");

-- n-uplets de la table Pokemon
INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (1,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (2,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (3,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (4,"oui");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (5,"oui");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (6,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (7,"oui");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (8,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (9,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (10,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (11,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (12,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (13,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (14,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (15,"oui");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (16,"oui");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (17,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (18,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (19,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (20,"non");

INSERT INTO Pokemon(idEspece,isLegendaire)
VALUES (21,"non");

-- n-uplets de la table Types
INSERT INTO Types(idType,nomType)
VALUES (1,"Feu");

INSERT INTO Types(idType,nomType)
VALUES (2,"Vol");

INSERT INTO Types(idType,nomType)
VALUES (3,"Electrik");

INSERT INTO Types(idType,nomType)
VALUES (4,"Glace");

INSERT INTO Types(idType,nomType)
VALUES (5,"Psy");

INSERT INTO Types(idType,nomType)
VALUES (6,"Normal");

INSERT INTO Types(idType,nomType)
VALUES (7,"Eau");

INSERT INTO Types(idType,nomType)
VALUES (8,"Plante");

INSERT INTO Types(idType,nomType)
VALUES (9,"Poison");

INSERT INTO Types(idType,nomType)
VALUES (10,"Combat");

INSERT INTO Types(idType,nomType)
VALUES (11,"Roche");

INSERT INTO Types(idType,nomType)
VALUES (12,"Sol");


-- n-uplets de la table DuType
INSERT INTO DuType(idEspece,idType)
VALUES (1,1);

INSERT INTO DuType(idEspece,idType)
VALUES (2,1);

INSERT INTO DuType(idEspece,idType)
VALUES (2,2);

INSERT INTO DuType(idEspece,idType)
VALUES (3,3);

INSERT INTO DuType(idEspece,idType)
VALUES (4,2);

INSERT INTO DuType(idEspece,idType)
VALUES (4,4);

INSERT INTO DuType(idEspece,idType)
VALUES (5,5);

INSERT INTO DuType(idEspece,idType)
VALUES (6,6);

INSERT INTO DuType(idEspece,idType)
VALUES (7,1);

INSERT INTO DuType(idEspece,idType)
VALUES (7,2);

INSERT INTO DuType(idEspece,idType)
VALUES (8,7);

INSERT INTO DuType(idEspece,idType)
VALUES (9,8);

INSERT INTO DuType(idEspece,idType)
VALUES (9,9);

INSERT INTO DuType(idEspece,idType)
VALUES (10,1);

INSERT INTO DuType(idEspece,idType)
VALUES (11,6);

INSERT INTO DuType(idEspece,idType)
VALUES (12,10);

INSERT INTO DuType(idEspece,idType)
VALUES (13,11);

INSERT INTO DuType(idEspece,idType)
VALUES (13,12);

INSERT INTO DuType(idEspece,idType)
VALUES (14,5);

INSERT INTO DuType(idEspece,idType)
VALUES (15,2);

INSERT INTO DuType(idEspece,idType)
VALUES (15,3);

INSERT INTO DuType(idEspece,idType)
VALUES (16,5);

INSERT INTO DuType(idEspece,idType)
VALUES (17,7);

INSERT INTO DuType(idEspece,idType)
VALUES (18,7);

INSERT INTO DuType(idEspece,idType)
VALUES (19,1);

INSERT INTO DuType(idEspece,idType)
VALUES (20,10);

INSERT INTO DuType(idEspece,idType)
VALUES (21,2);

INSERT INTO DuType(idEspece,idType)
VALUES (21,6);

-- n-uplets de la table PokemonCapture
INSERT INTO PokemonCapture(idEspece,niveau,taille,poids,attaqueSign,pV)
VALUES (1,34,0.6,8.5,"Flammeche",39);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (2,79,1.7,90.5,"Deflagration",78);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (3,49,0.4,6,"Tonnere",35);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (2,87,1.7,90.5,"Deflagration",78);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (4,28,1.7,55.4,"Laser glace",90);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (3,38,0.4,6,"Tonnere",35);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (5,99,2,122,"Psyko",106);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (6,45,0.3,4,"Morphing",48);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (7,39,2,60,"Deflagration",90);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (8,28,0.5,9,"Pistolet a o",44);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (9,42,0.7,6.9,"Vampigraine",45);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (10,49,0.7,19,"Lance-flamme",55);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (11,86,1.4,88.4,"Belier",75);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (12,53,0.5,28,"Poing-karate",40);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (13,23,8.8,210,"Etreinte",35);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (14,23,1.6,75.6,"Psyko",85);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (15,54,1.6,52.6,"Fatal-foudre",90);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (16,65,0.4,4,"Psyko",85);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (17,76,1.6,85.5,"Hydrocanon",79);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (18,32,1,22.5,"Tour rapide",59);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (9,32,0.7,6.9,"Vampigraine",45);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (19,54,1.9,155,"Vit.Extreme",90);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (20,34,1,32,"Frappe Atlas",65);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (21,86,0.3,1.8,"Jet de sable",90);

INSERT INTO PokemonCapture(idEspece,niveau,taille,Poids,AttaqueSign,PV)
VALUES (21,46,0.3,1.8,"Jet de sable",40);
                                                                
