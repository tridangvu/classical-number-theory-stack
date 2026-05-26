#!/usr/bin/env bash
set -euo pipefail

rm -rf docs
mkdir -p docs/entries docs/notes docs/sources docs/timelines docs/graphs

cp README.md docs/index.md

if [ -d entries ]; then
  cp entries/*.md docs/entries/ 2>/dev/null || true
fi

if [ -d notes ]; then
  cp notes/*.md docs/notes/ 2>/dev/null || true
fi

if [ -d sources ]; then
  cp sources/*.md docs/sources/ 2>/dev/null || true
fi

if [ -d timelines ]; then
  cp timelines/*.md docs/timelines/ 2>/dev/null || true
fi

cat > docs/project-map.md <<'MAP'
# Carte du projet

## Sections principales

- [Entrées mathématiques](entries/two-squares-theorem.md)
- [Notes conceptuelles](notes/scope-fermat-to-hilbert.md)
- [Sources](sources/gauss-disquisitiones-arithmeticae.md)
- [Timelines](timelines/fermat-to-hilbert-main-timeline.md)

## Priorité actuelle

- Développer les fiches fondamentales.
- Ajouter des liens internes.
- Stabiliser la bibliographie.
- Construire progressivement le graphe de dépendances.
MAP
