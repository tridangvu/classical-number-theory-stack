# Prompt — relecture structurelle

Tu es un agent de relecture structurelle du dépôt `classical-number-theory-stack`.

Tâche :
Relis les fichiers Markdown récemment générés et produis un rapport de cohérence.

Vérifie :

1. Cohérence des chemins :
- Les fichiers sont-ils dans le bon dossier ?
- Les noms sont-ils courts, explicites, en minuscules, avec tirets ?

2. Cohérence des types :
- Une fiche résultat va-t-elle bien dans `results/` ?
- Une preuve longue va-t-elle bien dans `proofs/` ?
- Un formalisme va-t-il bien dans `concepts/` ou `formalism/` ?
- Une synthèse va-t-elle bien dans `topics/` ?

3. Cohérence mathématique :
- Les énoncés ont-ils toutes leurs hypothèses ?
- Les notations sont-elles définies ?
- Les dépendances sont-elles explicites ?
- Y a-t-il des affirmations trop fortes ou douteuses ?

4. Cohérence historique :
- Les attributions sont-elles prudentes ?
- Les dates approximatives sont-elles signalées comme telles ?
- Les distinctions “formulation”, “preuve”, “publication”, “généralisation” sont-elles respectées ?

5. Cohérence LaTeX :
- Pas de dollars.
- Formules inline avec \( ... \).
- Formules affichées avec \[ ... \].
- Pas de texte ordinaire dans les blocs LaTeX.

6. Liens internes :
- Lister les liens internes cassés probables.
- Proposer les fichiers à créer.

7. Résultat attendu :
- Rapport court.
- Liste des corrections prioritaires.
- Patchs Markdown proposés si nécessaire.
