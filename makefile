README.md: guessinggame.sh
	echo "# Projet : Jeu de devinettes" > README.md
	echo "\n## Date et heure d'exécution" >> README.md
	echo "\n$(shell date)" >> README.md
	echo "\n## Nombre de lignes de code dans guessinggame.sh" >> README.md
	echo "\n$(shell wc -l < guessinggame.sh) lignes" >> README.md

clean:
	rm -f README.md
