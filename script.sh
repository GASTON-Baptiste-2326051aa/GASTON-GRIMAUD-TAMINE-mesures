#!/bin/bash
# Initialisation du compteur
count=0

# Spécifiez le dossier à parcourir
target_directory="modules"

# Parcourir les dossiers, sous-dossiers et fichiers dans le dossier spécifié
for file in $(find "$target_directory" -type f); do
    # Compter le nombre de lignes dans chaque fichier
    lines=$(wc -l < "$file")
    # Ajouter ce nombre au compteur
    count=$((count + lines))
done

# Afficher le résultat
echo "Le nombre total de lignes dans tous les fichiers de $target_directory est : $count"