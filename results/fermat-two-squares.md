type result
title Théorème des deux carrés de Fermat
period Fermat, Euler, Lagrange, Gauss
people Fermat, Euler, Lagrange, Gauss, Dedekind
topics sommes de deux carrés, résidus quadratiques, descente infinie, entiers de Gauss, formes quadratiques binaires
dependencies [congruences](../concepts/congruences.md), [résidus quadratiques](../concepts/quadratic-residues.md), [descente infinie](../concepts/infinite-descent.md), [critère d’Euler](./euler-criterion.md), [entiers de Gauss](../concepts/gaussian-integers.md), [norme](../concepts/norms.md)
leads_to [dossier de preuves du théorème des deux carrés](../proofs/fermat-two-squares-proofs.md), [formes quadratiques binaires](../concepts/binary-quadratic-forms.md), [nombres premiers de la forme x² + ny²](./primes-of-the-form-x2-plus-ny2.md), [transition formes-idéaux](../topics/forms-ideals-transition.md), [décomposition des premiers dans les corps quadratiques](../concepts/splitting-of-primes.md)
proof_status proof-dossier-needed
status draft

# Théorème des deux carrés de Fermat

## Position dans le projet

### De quoi ce résultat dépend ou provient-il ?

Le théorème des deux carrés part d’un problème diophantien très simple :

> Quels entiers \(n \geq 1\) peuvent s’écrire sous la forme \(n=x^2+y^2\), avec \(x,y \in \mathbf Z\) ?

Le premier cas décisif est celui des nombres premiers. Expérimentalement, on observe par exemple

\[
5 = 1^2+2^2,\qquad 13 = 2^2+3^2,\qquad 17 = 1^2+4^2,
\]

tandis que \(3,7,11,19\) ne semblent pas s’écrire comme sommes de deux carrés.

Le résultat dépend naturellement de plusieurs outils :

- les congruences modulo \(4\), voir [congruences](../concepts/congruences.md) ;
- la notion de résidu quadratique, voir [résidus quadratiques](../concepts/quadratic-residues.md) ;
- le fait que \(-1\) soit ou non un carré modulo un nombre premier, voir [critère d’Euler](./euler-criterion.md) ;
- la méthode de descente, voir [descente infinie](../concepts/infinite-descent.md) ;
- dans la preuve moderne, la factorisation dans l’anneau des entiers de Gauss \(\mathbf Z[i]\), voir [entiers de Gauss](../concepts/gaussian-integers.md).

La nécessité de la condition modulo \(4\) est élémentaire : un carré entier est toujours congru à \(0\) ou \(1\) modulo \(4\). Donc une somme de deux carrés ne peut jamais être congrue à \(3\) modulo \(4\). Cela exclut immédiatement les nombres premiers \(p \equiv 3 \pmod 4\).

La difficulté profonde est la réciproque : pourquoi tout nombre premier \(p \equiv 1 \pmod 4\) doit-il effectivement s’écrire comme somme de deux carrés ?

### Vers quoi ce résultat mène-t-il ?

Le théorème des deux carrés est un nœud central du projet parce qu’il relie une question élémentaire de représentation à plusieurs théories plus profondes :

- les lois de réciprocité quadratique ;
- les formes quadratiques binaires ;
- la factorisation dans des anneaux quadratiques ;
- la décomposition des nombres premiers dans les corps de nombres ;
- les premiers de la forme \(x^2+ny^2\).

Il mène notamment vers :

- [réciprocité quadratique](./quadratic-reciprocity.md) ;
- [formes quadratiques binaires](../concepts/binary-quadratic-forms.md) ;
- [entiers de Gauss](../concepts/gaussian-integers.md) ;
- [nombres premiers de la forme x² + ny²](./primes-of-the-form-x2-plus-ny2.md) ;
- [transition formes-idéaux](../topics/forms-ideals-transition.md) ;
- [décomposition des premiers dans les corps quadratiques](../concepts/splitting-of-primes.md).

## Énoncé moderne

### Version pour les nombres premiers

Soit \(p\) un nombre premier impair. Alors \(p\) s’écrit comme somme de deux carrés d’entiers,

\[
p = x^2+y^2,
\]

avec \(x,y \in \mathbf Z\), si et seulement si

\[
p \equiv 1 \pmod 4.
\]

En ajoutant le cas \(p=2\), on a

\[
2 = 1^2+1^2.
\]

Ainsi, les nombres premiers qui sont somme de deux carrés sont exactement \(2\) et les nombres premiers congrus à \(1\) modulo \(4\).

De plus, si \(p\) est un nombre premier impair congru à \(1\) modulo \(4\), l’écriture

\[
p=x^2+y^2
\]

est unique à permutation de \(x,y\) et changement de signes près.

### Version générale

Soit \(n \geq 1\) un entier. Écrivons sa factorisation première sous la forme

\[
n =
2^a
\prod_{p \equiv 1 \, (4)} p^{\alpha_p}
\prod_{q \equiv 3 \, (4)} q^{\beta_q}.
\]

Alors \(n\) est somme de deux carrés d’entiers si et seulement si, pour tout nombre premier \(q \equiv 3 \pmod 4\), l’exposant \(\beta_q\) est pair.

Autrement dit, les seuls obstacles sont les facteurs premiers congrus à \(3\) modulo \(4\), et ils ne sont autorisés qu’avec une multiplicité paire.

## Contexte historique et motivation

Fermat énonce le théorème au XVIIe siècle dans le cadre de ses recherches sur les équations diophantiennes, les nombres figurés et la descente infinie. Comme souvent chez Fermat, l’énoncé circule avant une preuve publiée complète.

Euler donne au XVIIIe siècle les premières démonstrations publiées du résultat. Sa preuve s’inscrit dans une tradition encore très proche de Fermat : l’idée essentielle est de partir d’une information de congruence, puis de descendre jusqu’à une représentation plus petite, jusqu’à obtenir directement une représentation du nombre premier \(p\).

Le problème est historiquement naturel parce qu’il commence par une question extrêmement concrète : reconnaître les nombres de la forme \(x^2+y^2\). Mais il devient vite profond parce que l’obstruction visible modulo \(4\) n’explique que la moitié négative du phénomène.

Pour \(p \equiv 3 \pmod 4\), l’impossibilité est immédiate. Pour \(p \equiv 1 \pmod 4\), il faut construire une représentation. La condition \(p \equiv 1 \pmod 4\) dit que \(-1\) est un carré modulo \(p\), c’est-à-dire qu’il existe \(a \in \mathbf Z\) tel que

\[
a^2 \equiv -1 \pmod p.
\]

Cela donne une relation de divisibilité :

\[
p \mid a^2+1.
\]

Mais passer de \(p \mid a^2+1\) à \(p=x^2+y^2\) est le vrai cœur du théorème. C’est précisément là que la descente, les formes quadratiques ou les entiers de Gauss interviennent.

Avec Gauss, le théorème est intégré à la théorie des formes quadratiques binaires. La forme \(x^2+y^2\) devient une forme quadratique de discriminant \(-4\), et la question devient : quels nombres premiers sont représentés par cette forme ?

Avec les entiers de Gauss \(\mathbf Z[i]\), le résultat reçoit une interprétation encore plus structurale. L’égalité

\[
p=x^2+y^2
\]

devient une factorisation

\[
p=(x+iy)(x-iy).
\]

Le théorème affirme alors que les nombres premiers \(p \equiv 1 \pmod 4\) se décomposent dans \(\mathbf Z[i]\), tandis que les nombres premiers \(p \equiv 3 \pmod 4\) restent premiers dans \(\mathbf Z[i]\).

Le théorème des deux carrés est donc l’un des premiers lieux où une question élémentaire force l’introduction d’objets arithmétiques nouveaux.

## Nature mathématique du résultat

Le théorème des deux carrés est à la fois :

- un critère de représentation par la forme quadratique \(x^2+y^2\) ;
- un théorème d’existence diophantienne ;
- un exemple fondamental de passage du local au global ;
- un pont entre congruences et factorisation ;
- un prototype des problèmes de représentation par formes quadratiques ;
- un cas élémentaire de la décomposition des premiers dans un corps quadratique.

La version pour les nombres premiers dit que la congruence modulo \(4\) contrôle exactement la représentabilité de \(p\) par \(x^2+y^2\).

La version générale dit que la propriété “être somme de deux carrés” est presque multiplicative, mais avec une obstruction précise : les premiers \(q \equiv 3 \pmod 4\) doivent apparaître à exposant pair.

L’identité multiplicative fondamentale est

\[
(a^2+b^2)(c^2+d^2)
=
(ac-bd)^2+(ad+bc)^2.
\]

Elle explique pourquoi les sommes de deux carrés sont stables par multiplication. Dans le langage de \(\mathbf Z[i]\), cette identité est simplement la multiplicativité de la norme

\[
N(a+bi)=a^2+b^2.
\]

## Preuves, méthodes et outils

La preuve complète du théorème ne doit pas être incluse dans cette fiche : le résultat possède plusieurs preuves importantes, chacune révélant une facette différente de la théorie. La preuve détaillée doit être renvoyée au dossier [fermat-two-squares-proofs](../proofs/fermat-two-squares-proofs.md).

### Obstruction modulo \(4\)

Cette partie est élémentaire et explique la nécessité de la condition.

Tout carré entier est congru à \(0\) ou \(1\) modulo \(4\). Donc une somme de deux carrés est congrue à \(0\), \(1\) ou \(2\) modulo \(4\), jamais à \(3\).

Ainsi, si \(p\) est un nombre premier impair tel que \(p \equiv 3 \pmod 4\), alors \(p\) ne peut pas s’écrire sous la forme \(x^2+y^2\).

Cette observation ne prouve pas la réciproque.

### Preuve par descente

Méthode historiquement naturelle, proche de Fermat et d’Euler.

L’idée générale est :

1. si \(p \equiv 1 \pmod 4\), alors \(-1\) est un carré modulo \(p\) ;
2. donc il existe \(a\) tel que \(p\mid a^2+1\) ;
3. on obtient ainsi une représentation d’un multiple de \(p\) par une somme de deux carrés ;
4. une descente permet de réduire ce multiple jusqu’à obtenir une représentation de \(p\) lui-même.

Outil principal : descente infinie ou argument de minimalité.

Avantage conceptuel : méthode élémentaire, historiquement proche des techniques de Fermat.

Coût technique : les manipulations de descente sont délicates et doivent être présentées soigneusement.

### Preuve par les entiers de Gauss

Méthode moderne la plus structurante.

On travaille dans l’anneau

\[
\mathbf Z[i]=\{a+bi \mid a,b \in \mathbf Z\}.
\]

La norme

\[
N(a+bi)=a^2+b^2
\]

est multiplicative. Comme \(\mathbf Z[i]\) est un anneau euclidien, donc factoriel, on peut raisonner par factorisation unique.

Si \(p \equiv 1 \pmod 4\), alors \(-1\) est un carré modulo \(p\), donc il existe \(a\) tel que

\[
a^2+1 \equiv 0 \pmod p.
\]

Dans \(\mathbf Z[i]\), cela signifie que \(p\) divise le produit

\[
(a+i)(a-i).
\]

Mais \(p\) ne divise pas séparément \(a+i\) et \(a-i\). Donc \(p\) n’est pas premier dans \(\mathbf Z[i]\). La factorisation unique force alors une décomposition non triviale de \(p\), et la norme d’un facteur donne une écriture

\[
p=x^2+y^2.
\]

Outil principal : euclidianité de \(\mathbf Z[i]\).

Avantage conceptuel : transforme une question additive en question multiplicative.

Coût technique : nécessite de développer proprement \(\mathbf Z[i]\), sa norme, ses unités, sa division euclidienne et sa factorisation unique.

### Preuve par formes quadratiques binaires

Méthode gaussienne.

La forme

\[
x^2+y^2
\]

est une forme quadratique binaire primitive positive définie de discriminant \(-4\). Le théorème dit quels nombres premiers sont représentés par cette forme.

Dans la théorie de Gauss, cette question appartient à la théorie générale de la représentation des entiers par des formes quadratiques binaires de discriminant donné.

Outil principal : réduction et composition des formes quadratiques binaires.

Avantage conceptuel : cette preuve place le théorème dans une famille beaucoup plus large, notamment les problèmes de la forme \(x^2+ny^2\).

Coût technique : demande une théorie plus lourde que le seul cas \(x^2+y^2\).

### Preuve via idéaux et décomposition des premiers

Méthode moderne issue de la théorie algébrique des nombres.

Dans le corps quadratique

\[
\mathbf Q(i),
\]

l’anneau des entiers est \(\mathbf Z[i]\). Le comportement de \(p\) dépend de la factorisation du polynôme

\[
X^2+1
\]

modulo \(p\). Pour \(p\) impair, ce polynôme se scinde modulo \(p\) si et seulement si \(-1\) est un carré modulo \(p\), c’est-à-dire si et seulement si \(p \equiv 1 \pmod 4\).

Outil principal : décomposition des idéaux premiers dans les extensions quadratiques.

Avantage conceptuel : fait apparaître le théorème comme un cas particulier de la théorie générale de la décomposition des premiers.

Coût technique : utilise le langage des idéaux, des anneaux d’entiers et des extensions de corps de nombres.

## Renvoi vers le dossier de preuves

La preuve complète doit être traitée dans :

[fermat-two-squares-proofs](../proofs/fermat-two-squares-proofs.md)

Ce dossier devra contenir :

- une preuve élémentaire par descente ;
- une preuve par les entiers de Gauss ;
- une preuve par les formes quadratiques binaires ;
- une preuve via idéaux dans \(\mathbf Z[i]\) ;
- une comparaison des méthodes ;
- une preuve de la version générale pour tous les entiers ;
- des exercices de reconstruction.

## Conséquences et prolongements

### Conséquences immédiates

Le théorème donne un critère complet pour les nombres premiers :

- \(2\) est somme de deux carrés ;
- si \(p \equiv 1 \pmod 4\), alors \(p\) est somme de deux carrés ;
- si \(p \equiv 3 \pmod 4\), alors \(p\) n’est pas somme de deux carrés.

La version générale donne un critère complet pour tous les entiers.

### Conséquences historiques

Le théorème devient un prototype pour les problèmes de représentation par formes quadratiques :

\[
p = x^2+ny^2.
\]

Ces problèmes conduisent naturellement à :

- la réciprocité quadratique ;
- la théorie des formes quadratiques binaires ;
- la composition de Gauss ;
- les anneaux quadratiques ;
- les groupes de classes ;
- la théorie du corps de classes.

### Reformulation moderne

Dans \(\mathbf Q(i)\), le théorème décrit la décomposition des premiers rationnels :

- \(2\) est ramifié ;
- si \(p \equiv 1 \pmod 4\), alors \(p\) se décompose ;
- si \(p \equiv 3 \pmod 4\), alors \(p\) reste inerte.

Cette reformulation annonce la théorie générale de la décomposition des premiers dans les extensions de corps de nombres.

## Exercices

1. Vérifier que tout carré entier est congru à \(0\) ou \(1\) modulo \(4\).

2. En déduire qu’un entier congru à \(3\) modulo \(4\) ne peut pas être somme de deux carrés.

3. Trouver explicitement des écritures de \(5,13,17,29,37,41\) comme sommes de deux carrés.

4. Démontrer l’identité

\[
(a^2+b^2)(c^2+d^2)
=
(ac-bd)^2+(ad+bc)^2.
\]

5. En déduire que le produit de deux sommes de deux carrés est encore une somme de deux carrés.

6. Montrer que si un nombre premier \(q \equiv 3 \pmod 4\) divise \(x^2+y^2\), alors \(q\) divise \(x\) et \(y\).

7. En déduire que, si \(n=x^2+y^2\), alors tout premier \(q \equiv 3 \pmod 4\) apparaît avec un exposant pair dans la factorisation de \(n\).

8. En supposant connu le théorème pour les nombres premiers \(p \equiv 1 \pmod 4\), démontrer la version générale du théorème.

## Références

- Fermat, correspondance et énoncés sur les sommes de deux carrés.
- Euler, travaux sur la preuve du théorème des deux carrés.
- Gauss, *Disquisitiones Arithmeticae*.
- G. H. Hardy et E. M. Wright, *An Introduction to the Theory of Numbers*.
- Kenneth Ireland et Michael Rosen, *A Classical Introduction to Modern Number Theory*.
- David A. Cox, *Primes of the Form \(x^2+ny^2\)*.
- André Weil, *Number Theory: An Approach Through History*.
- Harold M. Edwards, *Fermat's Last Theorem*.

## À faire

- Vérifier les attributions historiques précises entre Fermat, Euler, Lagrange et Gauss.
- Créer le dossier [fermat-two-squares-proofs](../proofs/fermat-two-squares-proofs.md).
- Créer ou compléter la fiche [entiers de Gauss](../concepts/gaussian-integers.md).
- Créer ou compléter la fiche [formes quadratiques binaires](../concepts/binary-quadratic-forms.md).
- Ajouter une fiche séparée sur l’identité de Brahmagupta-Fibonacci.
- Ajouter une fiche sur la décomposition des premiers dans \(\mathbf Q(i)\).
