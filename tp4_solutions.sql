1-
SELECT prenom,nom,idLivreur
FROM Ville NATURAL JOIN Pizzeria NATURAL JOIN Livreur;

'ou'

SELECT DISTINCT prenom,nom,idLivreur
FROM Ville , Pizzeria ,Livreur
WHERE Ville.nomVille = Livreur.nomVille = Pizzeria.nomVille 
AND Livreur.idPizzeria = Pizzeria.idPizzeria
(not working)

2-
SELECT prenom,nom,idLivreur
FROM Ville NATURAL JOIN Pizzeria NATURAL JOIN Livreur
WHERE nombreHabitants > 25000;

3-
(ensembleste)

SELECT idPizzeria,nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE (nomVille = 'Nantes')
AND (nomModele = 'Mob50')

INTERSECT

SELECT idPizzeria,nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomVille = 'Nantes'
AND nomModele = 'Mot125';


(avec in)

SELECT DISTINCT idPizzeria,nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomVille = 'Nantes'
AND nomModele = 'Mob50'
AND idPizzeria IN (SELECT idPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomVille = 'Nantes'
AND nomModele = 'Mot125');


(avec EXISTS)

SELECT DISTINCT idPizzeria,nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomVille = 'Nantes'
AND nomModele = 'Mob50'
AND EXISTS(SELECT idPizzeria
FROM Vehicule
WHERE nomModele = 'Mot125'
AND Pizzeria.idPizzeria = Vehicule.idPizzeria);
'exists works diffrenetly'

4-
SELECT DISTINCT idPizzeria,nomPizzeria
FROM Pizzeria NATURAL JOIN Vehicule
WHERE nombreLivreursMax > 3
AND idPizzeria NOT IN(SELECT idPizzeria
FROM Pizzeria NATURAL JOIN Vehicule
WHERE nomModele = 'Voit3p' );

(avec exist)

SELECT DISTINCT idPizzeria,nomPizzeria
FROM Pizzeria NATURAL JOIN Vehicule
WHERE nombreLivreursMax > 3
AND NOT EXISTS(SELECT idPizzeria
FROM Vehicule
WHERE nomModele = 'Voit3p' 
AND Pizzeria.idPizzeria = Vehicule.idPizzeria );

5-
SELECT nomVille, nombreHabitants, COUNT(idPizzeria)
FROM Ville NATURAL JOIN Livrer 
WHERE Ville.nombreHabitants > 25000
GROUP BY nomVille
HAVING COUNT(idPizzeria) >= 2

6-
SELECT nomPizzeria
FROM Pizzeria NATURAL JOIN Livreur NATURAL JOIN Ville
WHERE nombreHabitants > 25000
GROUP BY idPizzeria
HAVING COUNT(idLivreur) >= 1
AND idPizzeria IN(SELECT idPizzeria
FROM Pizzeria NATURAL JOIN Vehicule NATURAL JOIN Modele
WHERE Modele.puissance > 4) 

(manque d'une solution' "La Pizza en Carton")

7-

'NOT EXISTS'

SELECT nomPizzeria
FROM Pizzeria,Livreur
WHERE Livreur.idPizzeria = Pizzeria.idPizzeria 
AND NOT EXISTS(SELECT nomPizzeria
FROM Livreur
WHERE Livreur.nomVille = Pizzeria.nomVille
AND Pizzeria.idPizzeria = Livreur.idPizzeria )

'NOT IN'

SELECT DISTINCT nomPizzeria 
FROM Livreur,Pizzeria 
(produit cartisen becoz there,re two attributes shared, joining them will ruin the table)
WHERE Livreur.idPizzeria = Pizzeria.idPizzeria 
AND nomPizzeria NOT IN(SELECT nomPizzeria
FROM Livreur,Pizzeria 
WHERE Livreur.idPizzeria = Pizzeria.idPizzeria 
AND Livreur.nomVille = Pizzeria.nomVille)

8-
SELECT AVG(nombreLivreursMax)
FROM Livrer,Pizzeria
WHERE Pizzeria.idPizzeria = Livrer.idPizzeria
AND Livrer.nomVille = 'Nantes'

9-
'
SELECT nom,prenom,idLivrer
FROM Livrer,Pizzeria
WHERE Livrer.idPizzeria = Pizzeria.idPizzeria 
AND Pizzeria.nombreLivreursMax <= 4
AND nomPizzeria IN(SELECT nomPizzeria
FROM Pizzeria,Livrer,Ville
WHERE Livrer.idPizzeria = Pizzeria.idPizzeria
AND Livrer.nomVille = Ville.nomVille
AND Ville.nombreHabitants > 25000
GROUP BY nomPizzeria
HAVING COUNT(Livrer.nomVille >= 2) )

(not working, too much reponses)

'

SELECT DISTINCT nom, prenom, idLivreur
FROM Livrer , Livreur , Pizzeria
WHERE Livrer.idPizzeria = Livreur.idPizzeria
AND Pizzeria.idPizzeria = Livreur.idPizzeria
AND nombreLivreursMax < 4
AND Livrer.idPizzeria IN (SELECT Livrer.idPizzeria
FROM Livrer NATURAL JOIN
(SELECT nomVille FROM Ville WHERE nombreHabitants > 25000 ) AS B
GROUP BY idPizzeria
HAVING COUNT(idPizzeria) > 1 )

10-

SELECT nomVille
FROM (SELECT Livrer.nomVille,MAX(Pizzeria.idPizzeria)
FROM Livrer,Pizzeria
WHERE Livrer.idPizzeria = Pizzeria.idPizzeria) AS tableau

'
SELECT nomVille,MAX(Pizzeria.idPizzeria)
FROM Livrer,Pizzeria
WHERE Livrer.idPizzeria = Pizzeria.idPizzeria


SELECT nomVille
FROM Livrer,Pizzeria
WHERE Livrer.idPizzeria = Pizzeria.idPizzeria
GROUP BY nomVille
HAVING COUNT(idPizzeria) = (SELECT MAX(COUNT(idPizzeria))
FROM Livrer
GROUP BY nomVille)

all dis wrong
'

11-

'avec not in'
SELECT nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomPizzeria NOT IN (SELECT nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomModele = 'Mob50')

'avec not exists'
SELECT nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE NOT EXISTS(SELECT nomPizzeria
FROM Vehicule NATURAL JOIN Pizzeria 
WHERE nomModele = 'Mob50')
'returns empty results'

12-
SELECT nomPizzeria
FROM (SELECT idPizzeria,COUNT(idLivreur)
FROM Livreur
GROUP BY idPizzeria ) AS Tableau NATURAL JOIN Pizzeria
WHERE nombreLivreursMax = COUNT(idLivreur)
'lol no'

13-
SELECT nomPizzeria 
FROM Pizzeria,Livrer
WHERE Livrer.nomVille = 'Nantes'
AND Pizzeria.idPizzeria = Livrer.idPizzeria
'incomplete'







