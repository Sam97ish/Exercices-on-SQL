1-
SELECT DISTINCT  idAthlete,nom,prenom 
FROM Athlete

2-
SELECT DISTINCT idAthlete,nom,prenom,nomPays 
FROM Athlete NATURAL JOIN Nationalite
SELECT DISTINCT idAthlete,nom,prenom,nomPays 
FROM Athlete,Nationalite

3-
SELECT DISTINCT idAthlete,nom,prenom,epreuve 
FROM Athlete NATURAL JOIN Epreuve NATURAL JOIN Participer 
Where Athlete.idAthlete = Participer.idAthlete

4-
SELECT DISTINCT Epreuve.epreuve 
FROM Athlete NATURAL JOIN Epreuve NATURAL JOIN Participer 
WHERE prenom = 'Usain' AND nom = 'Bolt'

5-
SELECT DISTINCT Nationalite.nomPays 
FROM Athlete NATURAL JOIN Epreuve NATURAL JOIN Participer NATURAL JOIN Nationalite 
WHERE Epreuve.epreuve = '100 m dos' AND Athlete.sexe = 'M'

6-
SELECT DISTINCT idAthlete,nom,prenom  
FROM Athlete NATURAL JOIN Sport NATURAL JOIN Participer NATURAL JOIN Nationalite NATURAL JOIN Epreuve 
WHERE Nationalite.nomPays = 'Australie' AND Sport.sport = 'Natation' AND Athlete.sexe = 'F'

7-
SELECT DISTINCT idNationalite, nomPays 
FROM Nationalite 
ORDER BY nomPays ASC

8-
SELECT DISTINCT epreuve, dateRecord 
FROM Participer NATURAL JOIN Epreuve 
ORDER BY dateRecord ASC

9-
SELECT DISTINCT nom,prenom,epreuve,temps 
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve 
WHERE temps > "1:00:00" 
ORDER BY temps ASC

10-
SELECT DISTINCT idAthlete, nom ,prenom 
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve NATURAL JOIN Sport 
WHERE Athlete.idAthlete = Participer.idAthlete AND sport = 'natation'

11-
SELECT DISTINCT epreuve AS distance 
FROM Epreuve JOIN Sport ON sport = 'Athletisme' AND Sport.idsport = Epreuve.idsport

12-
SELECT DISTINCT AthleteF.nom ,AthleteF.prenom , AthleteM.prenom ,AthleteM.nom 
FROM Athlete AS AthleteF, Athlete AS AthleteM 
WHERE AthleteF.sexe = 'F' AND AthleteM.sexe = 'M';

13-
SELECT DISTINCT NationaliteR.nomPays, NationaliteL.nomPays 
FROM Nationalite AS NationaliteR , Nationalite AS NationaliteL
WHERE NationaliteR.idNationalite != NationaliteL.idNationalite
 (not working)

14-

'the outer join must be given the condition to join the two tables taking into account the question'

SELECT DISTINCT nomPays 
FROM Nationalite LEFT OUTER JOIN Athlete ON Nationalite.idNationalite = Athlete.idNationalite
WHERE Athlete.nom IS NULL

'SELECT DISTINCT nomPays 
FROM Nationalite OUTER LEFT JOIN Athlete ON Athlete.idNationalite IS NULL (wrong)'

15-
SELECT DISTINCT epreuve 
FROM Epreuve LEFT OUTER JOIN Participer ON Participer.idEpreuve = Epreuve.idEpreuve
WHERE Participer.idAthlete IS NULL

16-
SELECT DISTINCT dateRecord
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE Athlete.prenom = 'Ranomi' AND Epreuve.epreuve = '100 m nage libre'

17-
SELECT DISTINCT idAthlete, nom, prenom 
FROM  Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE Athlete.sexe = 'F' AND Participer.dateRecord >= (SELECT DISTINCT dateRecord
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE Athlete.prenom = 'Ranomi' AND Epreuve.epreuve = '100 m nage libre')

'or'

SELECT DISTINCT idAthlete, nom, prenom 
FROM  Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE Athlete.sexe = 'F' AND Participer.dateRecord > '2012-08-02'

18-

SELECT epreuve 
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE epreuve NOT IN(SELECT epreuve
FROM Athlete NATURAL JOIN Participer NATURAL JOIN Epreuve
WHERE Athlete.sexe = 'F')



