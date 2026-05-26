# Prompt — dossier de preuves

Génère un dossier de preuves Markdown pour le résultat suivant :

Résultat : [NOM DU RÉSULTAT]
Chemin souhaité : `proofs/[nom-du-resultat]-proofs.md`
Fiche courte liée : `results/[nom-du-resultat].md`
Période principale : [période]
Mathématiciens liés : [liste]
Méthodes à comparer : [ex. descente, congruences, formes quadratiques, sommes de Gauss, idéaux, analyse, preuve moderne]

Utilise l’esprit du template `templates/proof-dossier.md`.

Structure exigée :
1. Métadonnées.
2. Résultat démontré.
3. Carte des preuves.
4. Preuve 1 — historique.
5. Preuve 2 — élémentaire.
6. Preuve 3 — structurelle.
7. Preuve 4 — moderne.
8. Comparaison des preuves.
9. Dépendances techniques.
10. Résultats utilisés sans preuve complète.
11. Exercices de reconstruction.
12. Références.

Contraintes :
- français ;
- Markdown ;
- LaTeX avec \( ... \) et \[ ... \) uniquement ;
- ne pas utiliser de dollars ;
- ne pas prétendre à l’exhaustivité absolue si certaines preuves sont seulement mentionnées.
