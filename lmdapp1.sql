**R1 :** *Qui est le lecteur n°30 ?*

SELECT * FROM Lecteurs WHERE numLecteur = 30;

**R2 :** *Quels sont les lecteurs dont le nom de famille commence par la lettre « S » ?*

SELECT nomLecteur FROM Lecteurs WHERE nomLecteur LIKE "%S"

**R3 :** *Quels sont les titre et année de parution des ouvrages traitant de la méthode Merise ?*

SELECT nomLecteur FROM Lecteurs WHERE nomLecteur LIKE "%MERISE%"

**R4 :** *Quels sont les ouvrages qui traitent du Registre (dans Windows) et parus à partir de lannée 2000 ?*

SELECT titreOuvrage, anneeParution FROM Ouvrages WHERE titreOuvrage LIKE "%registre%" AND anneeParution >= 2000;

**R5 :** *Quels sont, sans doublon, les ouvrages (titres et dates) empruntés par le lecteur nommé « HAMSI » ?*

SELECT DISTINCT titreOuvrage, anneeParution FROM Lecteurs, Ouvrage, emprunts WHERE nomLecteur = "hamsi" 
AND Lecteurs.numLecteur = Emprunter.numLecteur AND Emprunter.numouvrage = ouvrage.numOuvrage;
