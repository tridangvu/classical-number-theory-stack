# Prompt — fiche de résultat

Génère une fiche Markdown complète pour le résultat suivant :

Résultat : [NOM DU RÉSULTAT]
Chemin souhaité : `results/[nom-du-fichier].md`
Période : [ex. Fermat, Euler, Legendre, Gauss]
Personnes liées : [liste]
Sujets liés : [liste]
Statut : draft

Utilise exactement l’esprit du template `templates/result-entry.md`.

La fiche doit contenir :
1. Métadonnées initiales.
2. Titre.
3. Énoncé moderne.
4. Contexte historique.
5. Motivation.
6. Idée de preuve.
7. Preuve ou esquisse.
8. Dépendances conceptuelles.
9. Conséquences.
10. Exercices.
11. Références.

Contraintes LaTeX :
- Utiliser \( ... \) pour les formules inline.
- Utiliser \[ ... \] pour les formules affichées.
- Ne pas utiliser les dollars.

Produit uniquement le contenu du fichier Markdown.
