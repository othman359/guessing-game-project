#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire courant
function count_files {
    echo $(ls -1 | wc -l)
}

# Message d'accueil
echo "Bienvenue dans le jeu de devinettes !"
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel."

# Obtenir le nombre de fichiers
file_count=$(count_files)

# Boucle jusqu'à ce que l'utilisateur devine correctement
while true; do
    read -p "Entrez votre estimation : " guess

    # Vérification de l'entrée utilisateur
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre : $file_count"
        break
    fi
done
