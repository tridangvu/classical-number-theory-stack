# Prompt — fiche de résultat

Génère une fiche Markdown pour un résultat mathématique du projet `classical-number-theory-stack`.

## Entrée

Résultat : [NOM DU RÉSULTAT]
Chemin souhaité : `results/[nom-du-fichier].md`
Période : [ex. Fermat, Euler, Legendre, Gauss]
Personnes liées : [liste]
Sujets liés : [liste]
Statut : draft

## Principe directeur

Une fiche `results/` n’est pas un dossier de preuves.

Elle doit principalement servir à situer un résultat dans le projet :
- d’où il vient ;
- de quoi il dépend ;
- pourquoi il apparaît historiquement et conceptuellement ;
- ce qu’il permet ensuite ;
- vers quelles fiches plus détaillées il renvoie.

La preuve complète ne doit apparaître dans cette fiche que si elle n’est pas considérablement plus longue ou plus difficile que l’énoncé.

Si la preuve est longue, difficile, historiquement multiple, ou conceptuellement trop riche, il faut :
- ne pas donner de preuve complète dans la fiche résultat ;
- renvoyer vers un dossier autonome dans `proofs/` ;
- donner plutôt un bref historique des preuves, des méthodes et des outils.

## Structure attendue

### 1. Métadonnées

Commencer par des métadonnées simples, par exemple :

type result  
title [titre]  
period [période]  
people [personnes]  
topics [sujets]  
dependencies [dépendances amont]  
leads_to [résultats ou théories aval]  
proof_status [short-proof | proof-dossier-needed | proof-dossier-existing]  
status draft  

### 2. Titre

Donner un titre clair.

### 3. Position dans le projet

Cette section doit venir tôt dans la fiche.

Elle doit répondre brièvement à deux questions :

#### De quoi ce résultat dépend ou provient-il ?

Indiquer :
- les définitions nécessaires ;
- les résultats antérieurs ;
- les problèmes historiques qui le rendent naturel ;
- les fiches internes amont, avec liens Markdown proposés.

#### Vers quoi ce résultat mène-t-il ?

Indiquer :
- les résultats qui l’utilisent ;
- les théories qu’il prépare ;
- les généralisations importantes ;
- les fiches internes aval, avec liens Markdown proposés.

### 4. Énoncé moderne

Énoncer le résultat dans un langage moderne.

Contraintes :
- toutes les hypothèses doivent être explicites ;
- les notations doivent être définies ;
- si l’énoncé historique diffère de l’énoncé moderne, le signaler.

### 5. Contexte historique et motivation

Fusionner contexte historique et motivation.

Cette section doit expliquer en un seul fil :
- quel problème a rendu le résultat naturel ;
- qui l’a formulé, démontré, généralisé ou popularisé ;
- pourquoi le résultat était difficile ou intéressant à son époque ;
- quel obstacle conceptuel il résout ;
- pourquoi il devient un nœud dans l’histoire de la théorie des nombres.

Éviter deux sections séparées “Contexte historique” et “Motivation” sauf si cela améliore vraiment la lisibilité.

### 6. Nature mathématique du résultat

Expliquer ce que le résultat dit réellement.

Selon le cas, préciser s’il s’agit :
- d’un critère ;
- d’une loi de réciprocité ;
- d’un théorème d’existence ;
- d’un théorème de structure ;
- d’un outil de calcul ;
- d’un pont entre deux formalismes ;
- d’un cas particulier d’une théorie plus vaste.

### 7. Preuves, méthodes et outils

Ne pas écrire automatiquement une section “Idée de preuve”.

Procéder ainsi :

#### Cas A — preuve courte

Si la preuve est courte et pas considérablement plus difficile que l’énoncé :
- donner une preuve complète ;
- expliciter les lemmes utilisés ;
- rester concis.

#### Cas B — preuve longue ou théorème fructueux

Si le résultat possède une preuve longue, difficile, ou plusieurs preuves importantes :
- ne pas donner de preuve complète ;
- donner un bref historique des preuves ;
- lister les principales méthodes de preuve ;
- expliquer les outils requis par chaque méthode ;
- indiquer quelle preuve devrait être traitée dans un dossier `proofs/`.

Pour chaque méthode, donner idéalement :
- nom ou description courte ;
- période ou mathématicien associé si pertinent ;
- outil principal ;
- avantage conceptuel ;
- coût technique.

Exemple de format :

- Preuve par descente : ...
- Preuve par formes quadratiques : ...
- Preuve par sommes de Gauss : ...
- Preuve via idéaux : ...
- Reformulation moderne : ...

### 8. Renvoi vers les dossiers de preuves

Si nécessaire, ajouter une section :

La preuve complète doit être traitée dans :
`proofs/[nom-du-resultat]-proofs.md`

Indiquer ce que ce dossier devra contenir :
- preuves historiques ;
- preuves élémentaires ;
- preuves structurelles ;
- preuves modernes ;
- comparaison des méthodes ;
- exercices de reconstruction.

### 9. Conséquences et prolongements

Section optionnelle.

L’inclure seulement si le résultat a des conséquences naturelles importantes.

Distinguer si possible :
- conséquences immédiates ;
- conséquences historiques ;
- généralisations modernes ;
- rôle dans la suite du projet.

### 10. Exercices

Section optionnelle.

L’inclure si les exercices aident réellement à reconstruire le résultat ou à comprendre son rôle.

Ne pas ajouter des exercices mécaniques pour remplir la fiche.

Si la preuve est renvoyée vers un dossier `proofs/`, limiter ici les exercices à :
- vérification de l’énoncé sur des exemples ;
- compréhension des dépendances ;
- exploration de conséquences simples.

### 11. Références

Ajouter des références fiables.

Ne pas inventer :
- pagination ;
- citation précise ;
- attribution incertaine.

Préférer des références classiques et sûres quand elles sont pertinentes :
- Gauss, `Disquisitiones Arithmeticae` ;
- Hardy et Wright, `An Introduction to the Theory of Numbers` ;
- Ireland et Rosen, `A Classical Introduction to Modern Number Theory` ;
- Cox, `Primes of the Form x^2 + ny^2` ;
- Edwards, `Fermat's Last Theorem` ;
- Weil, `Number Theory: An Approach Through History` ;
- Bach et Shallit, `Algorithmic Number Theory`.

## Contraintes de style

- Langue : français.
- Format : Markdown.
- Ton : rigoureux, clair, historiquement informé.
- Ne pas surproduire.
- Ne pas transformer une fiche résultat en traité.
- Utiliser des liens internes Markdown proposés, même si les fichiers n’existent pas encore.
- Ajouter une section “À faire” si certains points doivent être vérifiés ou développés.

## Contraintes LaTeX

- Utiliser \( ... \) pour les formules inline.
- Utiliser \[ ... \] pour les formules affichées.
- Ne pas utiliser de délimiteurs dollar.
- Ne pas mettre de texte ordinaire dans les blocs LaTeX.
- Vérifier que chaque délimiteur LaTeX ouvrant est fermé.

## Sortie attendue

Produit uniquement le contenu du fichier Markdown demandé.
