1-
SELECT DISTINCT idAthlete, nom, prenom 
FROM Athlete 
WHERE Athlete.sexe = 'F' AND dateNaissance > '1990-01-01';

2-
SELECT DISTINCT idAthlete, nom, prenom 
FROM Athlete 
WHERE MONTH(dateNaissance) = 11;

3-
SELECT COUNT(*) 
FROM Participer;

4-
SELECT DISTINCT COUNT(*) 
FROM Athlete 
WHERE Athlete.sexe = 'F';

'or'

SELECT COUNT(idAthlete)
FROM Athlete
GROUP BY sexe
HAVING sexe = 'F'


5-
SELECT MIN(temps) 
FROM Participer;

6-
SELECT MIN(dateNaissance) 
FROM Athlete;

7-
SELECT DISTINCT idAthlete, nom, prenom ,COUNT(temps) AS nbRecords 
FROM Athlete Natural JOIN Participer 
GROUP BY idAthlete

8-
SELECT DISTINCT idAthlete, nom, prenom  
FROM Athlete Natural JOIN Participer 
WHERE Athlete.sexe = 'F' 
GROUP BY idAthlete 
HAVING COUNT(idAthlete) >= 2 
ORDER BY prenom ASC

'or'

SELECT idAthlete,nom,prenom,COUNT(temps)
FROM Athlete Natural JOIN Participer
WHERE Athlete.sexe = 'F'
GROUP BY idAthlete
HAVING COUNT(temps) >= 2 
ORDER BY prenom ASC

9-
SELECT DISTINCT nomPays,COUNT(Athlete.idNationalite) AS nb 
FROM Athlete NATURAL JOIN Nationalite 
GROUP BY nomPays 
ORDER BY nb DESC;

10-
SELECT DISTINCT nomPays,COUNT(nomPays) AS Nb
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Nationalite NATURAL JOIN Epreuve NATURAL JOIN Sport 
WHERE Sport.sport = "Natation"
GROUP BY nomPays
ORDER BY Nb DESC

11-
SELECT DISTINCT idAthlete,nom,prenom 
FROM Athlete NATURAL JOIN Participer
WHERE Participer.dateRecord >= "2012-01-01"
GROUP BY idAthlete
HAVING COUNT(idAthlete) >= 2

12-
SELECT epreuve
FROM Epreuve NATURAL JOIN Participer NATURAL JOIN Athlete
GROUP BY idEpreuve
HAVING COUNT(DISTINCT sexe) > 1

(must revise GROUP BY SO badly) (done)

13-
SELECT epreuve
FROM Epreuve NATURAL JOIN Participer NATURAL JOIN Athlete
GROUP BY idEpreuve
HAVING COUNT(DISTINCT sexe) = 1

14-
SELECT nomPays,COUNT(idAthlete)
FROM Nationalite NATURAL JOIN Athlete
GROUP BY nomPays
HAVING COUNT(idAthlete) > (SELECT COUNT(idAthlete)
FROM Athlete NATURAL JOIN Nationalite 
WHERE nomPays = "France")

'or'

SELECT nomPays
FROM Athlete NATURAL JOIN Nationalite
GROUP BY idNationalite
HAVING COUNT(idAthlete) > (SELECT COUNT(idAthlete)
FROM Athlete NATURAL JOIN Nationalite
WHERE nomPays = 'France')

15-
SELECT nomPays
FROM Nationalite NATURAL JOIN Athlete
GROUP BY nomPays
HAVING COUNT(nomPays) >=  ALL(SELECT COUNT(nomPays)
FROM Nationalite NATURAL JOIN Athlete GROUP BY nomPays)

'or'

SELECT nomPays
FROM Athlete NATURAL JOIN Nationalite
GROUP BY idNationalite
HAVING COUNT(idAthlete) >= ALL(SELECT COUNT(idAthlete)
FROM Athlete NATURAL JOIN Nationalite
GROUP BY idNationalite)

16-
SELECT DISTINCT nomPays
FROM Nationalite LEFT OUTER JOIN (Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve NATURAL JOIN Sport) ON Nationalite.idNationalite = Athlete.idNationalite
WHERE NOT EXISTS(SELECT nomPays
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Nationalite NATURAL JOIN Epreuve NATURAL JOIN Sport
GROUP BY idNationalite
HAVING Sport.sport = 'Athletisme')
(almost working)
