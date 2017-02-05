{PROGRAMME BatailleNavale

//BUT:Jouer au jeu la bataille navale
//ENTREE:Le type de bateau et leur placement
//SORTIE:Indiquation si un bateau est touché ou non

CONST
	
	MAX=10

Type cases=enregistrement //On definit la variation en x et y

	abscisse,ordonnee:ENTIER

FINENREGISTREMENT.

Type bateau=enregistrement //On définit les différents types de bateau
	
	porteavions:Tableau[1..5]de cases; 
	croiseur:Tableau[1..4]de cases;
	contretorpilleurs:Tableau[1..5]de cases;
	sousmarin:Tableau[1..5]de cases;
	torpilleur:Tableau[1..5]de cases;	

FINENREGISTREMENT.


Type flotte=enregistrement
	
	Tabflotte:Tableau[1..MAX]de bateau

FINENREGISTREMENT.




procedure creationcase(var cases) //Création de la grille sans tableau

	VAR
		i,j:ENTIER


	DEBUT
		POUR i DE 1 A MAX FAIRE
			DEBUT
				POUR j DE 1 A MAX FAIRE
					DEBUT
					abscisse:=abscisse+1;
					ordonnee:=ordonnee+1;
						SI (i=1) ET (j=1)
							ALORS
								ECRIRE ('')
									SINON SI (i>1) ET (j=1) ALORS
										ECRIRE (abscisse)
											SINON SI (i=1) ET (j>1) ALORS
												ECRIRE (ordonnee)
						SINON ECRIRE ('X')
						FINSI
					FIN
				FINPOUR
			FIN
		FINPOUR
	FIN
FINPROCEDURE


VAR
	ligne,colonne:ENTIER;


procedure comparaison()

DEBUT

	creationcase(ligne,colonne);

FIN.

}

program BatailleNavale;

uses crt;

CONST
	
	MAX=10;

Type cases=record

	abscisse,ordonnee:INTEGER;

END;

Type bateau=record

	porteavions:Array[1..5]of cases; 
	croiseur:Array[1..4]of cases;
	contretorpilleurs:Array[1..5]of cases;
	sousmarin:Array[1..5]of cases;
	torpilleur:Array[1..5]of cases;	

END;

Type flotte=record
	
	Tabflotte:Array[1..MAX]of bateau;

END;



procedure creationcase(var abscisse,ordonnee);

	VAR
		i,j:INTEGER;


	BEGIN
		FOR i:=1 TO MAX DO
			BEGIN
				FOR j:=1 TO MAX DO
					BEGIN
						abscisse:=abscisse+1;
						ordonnee:=ordonnee+1;
						IF (i=1) AND (j=1)
							THEN
								BEGIN
									Write ('')
								END
									ELSE IF(i>1) AND (j=1) THEN
										BEGIN
											Write(abscisse);
										END
											ELSE IF(i=1) AND (j>1) THEN
												BEGIN
													Write(ordonnee);
												END
						ELSE Write ('X');
					END;
			END;
			Writeln;
	END;


VAR
	ligne,colonne:INTEGER;


procedure comparaison()

BEGIN

	creationcase(ligne,colonne);

END.
