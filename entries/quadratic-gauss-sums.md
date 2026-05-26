---
type: result
title: "Évaluation des sommes de Gauss quadratiques"
period: "XIXe siècle"
people: ["Gauss"]
topics: ["sommes de Gauss", "résidus quadratiques", "réciprocité"]
dependencies: ["racines de l'unité", "symbole de Legendre", "congruences modulo p"]
status: draft
---

# Évaluation des sommes de Gauss quadratiques

## Énoncé moderne

Pour un nombre premier impair \(p\), on définit la somme de Gauss quadratique

\[
G_p = \sum_{x \in \mathbf F_p} e^{2\pi i x^2/p}.
\]

Alors

\[
G_p^2 = (-1)^{\frac{p-1}{2}}p.
\]

En particulier,

\[
G_p =
\begin{cases}
\sqrt p & \text{si } p \equiv 1 \pmod 4,\\
i\sqrt p & \text{si } p \equiv 3 \pmod 4,
\end{cases}
\]

avec un choix convenable de signe.

## Contexte historique

Les sommes de Gauss sont centrales chez Gauss et dans les preuves analytiques ou algébriques de la réciprocité quadratique.

## Motivation

Traduire des questions de congruences quadratiques en calculs avec des racines de l'unité.

## Idée de preuve

Calculer le carré de la somme, changer de variables, et utiliser la structure multiplicative de \(\mathbf F_p^\times\).

## Preuve ou esquisse

À compléter.

## Dépendances conceptuelles

- Racines de l'unité.
- Corps fini \(\mathbf F_p\).
- Résidus quadratiques.
- Symbole de Legendre.

## Conséquences

- Preuves de la réciprocité quadratique.
- Sommes de Jacobi.
- Réciprocités supérieures.
- Pont entre analyse, algèbre et arithmétique.

## Exercices

1. Calculer \(G_3\), \(G_5\), \(G_7\).
2. Montrer que \(G_p^2 = \left(\frac{-1}{p}\right)p\).
3. Relier cette formule à la réciprocité quadratique.

## Références

- À compléter.
