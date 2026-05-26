---
type: result
title: "Théorème des deux carrés"
period: "XVIIe-XIXe siècles"
people: ["Fermat", "Euler", "Lagrange", "Legendre", "Gauss", "Dedekind"]
topics: ["formes quadratiques", "équations diophantiennes", "représentation", "entiers de Gauss", "factorisation"]
dependencies: ["congruences", "résidus quadratiques", "descente infinie", "identité des deux carrés", "anneau euclidien", "formes quadratiques"]
status: expanded-draft
---

# Théorème des deux carrés

## 1. Résumé court

Le théorème des deux carrés caractérise les entiers qui peuvent s'écrire sous la forme $x^2+y^2$ avec $x,y\in\mathbf Z$.

Dans sa forme première, il affirme qu'un nombre premier impair $p$ est somme de deux carrés si et seulement si $p\equiv 1\pmod 4$. Le cas $p=2$ est exceptionnel mais favorable, puisque $2=1^2+1^2$.

Dans sa forme générale, il affirme qu'un entier positif $n$ est somme de deux carrés si et seulement si tout premier $q\equiv 3\pmod 4$ apparaît avec exposant pair dans la factorisation première de $n$.

Historiquement, le résultat est associé à Fermat, qui l'énonce au XVIIe siècle, puis à Euler, qui en donne une démonstration au XVIIIe siècle. Il devient ensuite un exemple fondamental dans la théorie des formes quadratiques de Lagrange, Legendre et surtout Gauss.

Conceptuellement, ce théorème est un premier prototype de la question générale : quels entiers sont représentés par une forme quadratique donnée ?

Il possède plusieurs preuves importantes : preuve par congruences et descente, preuve par l'identité des deux carrés, preuve par les entiers de Gauss $\mathbf Z[i]$, preuve par les formes quadratiques.

La preuve moderne par $\mathbf Z[i]$ montre que $x^2+y^2$ est une norme :

$$
x^2+y^2=N(x+iy).
$$

Le théorème devient alors une question de factorisation dans un anneau plus grand que $\mathbf Z$. C'est précisément le type d'idée qui mènera, au XIXe siècle, à Kummer, Dedekind, puis à la théorie algébrique des nombres.

Fil historique :

$$
\text{Fermat}
\longrightarrow
\text{Euler}
\longrightarrow
\text{Gauss}
\longrightarrow
\mathbf Z[i]
\longrightarrow
\text{Dedekind}.
$$

---

## 2. Énoncés modernes

### 2.1. Version pour les nombres premiers

**Théorème.** Soit $p$ un nombre premier. Alors :

1. $2=1^2+1^2$ ;
2. si $p$ est impair, alors $p$ est de la forme $p=x^2+y^2$ avec $x,y\in\mathbf Z$ si et seulement si

$$
p\equiv 1\pmod 4.
$$

Autrement dit, les nombres premiers représentés par la forme $x^2+y^2$ sont exactement :

$$
2
\quad\text{et les premiers impairs congrus à}\quad
1\pmod 4.
$$

Dans la suite, on évitera autant que possible de cacher le cas $p=2$, car il explique pourquoi la formulation générale doit traiter séparément les premiers $2$, les premiers $1\pmod 4$ et les premiers $3\pmod 4$.

### 2.2. Version générale pour les entiers

**Théorème.** Soit $n\geq 1$ un entier. Écrivons sa factorisation première sous la forme

$$
n=2^a
\prod_{p\equiv 1\pmod 4}p^{\alpha_p}
\prod_{q\equiv 3\pmod 4}q^{\beta_q}.
$$

Alors $n$ est somme de deux carrés si et seulement si, pour tout premier $q\equiv 3\pmod 4$, l'exposant $\beta_q$ est pair.

Donc les premiers $1\pmod 4$ peuvent apparaître avec n'importe quel exposant ; le premier $2$ aussi ; mais les premiers $3\pmod 4$ doivent apparaître avec exposant pair.

### 2.3. Version multiplicative

La structure multiplicative repose sur l'identité de Brahmagupta-Fibonacci :

$$
(a^2+b^2)(c^2+d^2)
=
(ac-bd)^2+(ad+bc)^2.
$$

Elle signifie que le produit de deux sommes de deux carrés est encore une somme de deux carrés.

Cette identité est fondamentale pour passer du cas des nombres premiers au cas des entiers généraux. En effet, si chaque facteur premier autorisé est une somme de deux carrés, alors tout produit de tels facteurs l'est encore.

### 2.4. Version en termes de l'anneau $\mathbf Z[i]$

On introduit l'anneau des entiers de Gauss :

$$
\mathbf Z[i]=\{a+bi:a,b\in\mathbf Z\}.
$$

On définit la norme par

$$
N(a+bi)=a^2+b^2.
$$

Alors dire que $n$ est somme de deux carrés revient à dire qu'il existe $\alpha\in\mathbf Z[i]$ tel que

$$
n=N(\alpha).
$$

Ainsi, la question devient une question de normes dans l'anneau $\mathbf Z[i]$.

---

## 3. Contexte historique

### 3.1. Fermat

Fermat annonce le théorème selon lequel tout nombre premier congru à $1$ modulo $4$ est somme de deux carrés. Il affirme aussi de nombreux résultats voisins sur les nombres représentés par des formes comme $x^2+2y^2$, $x^2+3y^2$, etc.

La question est naturelle dans l'arithmétique du XVIIe siècle parce qu'on cherche à comprendre non seulement les diviseurs des entiers, mais aussi les formes sous lesquelles les entiers peuvent apparaître. Le problème n'est pas seulement :

- quels sont les diviseurs de $n$ ?

mais aussi :

- existe-t-il $x,y$ tels que $n=x^2+y^2$ ?
- existe-t-il $x,y$ tels que $n=x^2+2y^2$ ?
- existe-t-il $x,y$ tels que $n=x^2+ny^2$ ?

Fermat utilise la descente infinie comme méthode fondamentale. L'idée générale de la descente est la suivante : pour montrer qu'une certaine situation impossible n'existe pas, on suppose qu'elle existe avec une solution minimale, puis on construit une solution strictement plus petite. Cela contredit le principe du bon ordre des entiers positifs.

Dans le cas du théorème des deux carrés, la descente apparaît dans la preuve d'existence : à partir d'une représentation d'un multiple de $p$ comme somme de deux carrés, on descend vers une représentation plus petite jusqu'à obtenir $p$ lui-même.

### 3.2. Euler

Euler joue un rôle décisif parce qu'il donne une démonstration effective de résultats annoncés par Fermat.

La difficulté du théorème des deux carrés est la partie d'existence :

$$
p\equiv 1\pmod 4
\quad\Longrightarrow\quad
p=x^2+y^2.
$$

La nécessité est facile : si $p=x^2+y^2$ est impair, alors l'un de $x,y$ est pair et l'autre impair, donc $p\equiv 1\pmod 4$.

Mais l'existence est plus profonde. Il faut montrer qu'une condition de congruence locale modulo $4$ force une représentation globale exacte par une somme de carrés.

Euler utilise essentiellement deux outils :

1. l'identité des deux carrés ;
2. une forme de descente.

L'identité des deux carrés permet de contrôler les produits. La descente permet de passer d'une représentation d'un multiple de $p$ à une représentation de $p$ lui-même.

### 3.3. Lagrange, Legendre, Gauss

Après Fermat et Euler, le théorème change de statut.

Il n'est plus seulement un résultat isolé sur $x^2+y^2$. Il devient un cas particulier du grand problème suivant :

> Étant donnée une forme quadratique entière, quels entiers représente-t-elle ?

La forme $x^2+y^2$ est une forme quadratique binaire de discriminant $-4$. Plus généralement, une forme quadratique binaire entière est une expression

$$
ax^2+bxy+cy^2.
$$

Son discriminant est

$$
D=b^2-4ac.
$$

Pour $x^2+y^2$, on a $a=1$, $b=0$, $c=1$, donc

$$
D=-4.
$$

Lagrange développe la réduction des formes quadratiques. Legendre introduit son symbole et formule la réciprocité quadratique. Gauss, dans les Disquisitiones Arithmeticae, unifie profondément ces idées : congruences, résidus quadratiques, formes quadratiques, composition, genres.

Dans cette perspective, le théorème des deux carrés est le premier exemple paradigmatique d'une théorie de représentation des nombres par formes quadratiques.

### 3.4. Lecture moderne

La lecture moderne par $\mathbf Z[i]$ clarifie brutalement le résultat.

On observe que

$$
x^2+y^2=(x+iy)(x-iy).
$$

Ainsi, représenter un entier comme somme de deux carrés revient à le représenter comme norme d'un entier de Gauss.

Le résultat devient alors une question de factorisation dans l'anneau $\mathbf Z[i]$.

Cette idée annonce Dedekind : lorsqu'un problème de divisibilité dans $\mathbf Z$ devient difficile, on agrandit l'anneau. Mais cet agrandissement crée une nouvelle question : la factorisation unique reste-t-elle vraie ?

Dans $\mathbf Z[i]$, elle reste vraie, car $\mathbf Z[i]$ est un anneau euclidien. Dans des anneaux plus compliqués, elle échoue, et cet échec conduira à Kummer puis aux idéaux de Dedekind.

---

## 4. Motivations conceptuelles

### 4.1. Pourquoi s'intéresser aux nombres de la forme $x^2+y^2$ ?

Parce que c'est l'un des premiers problèmes naturels de représentation.

La divisibilité demande : quels sont les facteurs de $n$ ?

La représentation demande : quelles formes arithmétiques peuvent produire $n$ ?

La forme $x^2+y^2$ est l'une des plus simples après les carrés eux-mêmes. Elle relie :

- les carrés ;
- la géométrie euclidienne ;
- les distances ;
- les triplets pythagoriciens ;
- les formes quadratiques ;
- les normes dans $\mathbf Z[i]$.

### 4.2. Pourquoi la congruence modulo $4$ apparaît-elle ?

Parce que les carrés modulo $4$ sont très contraints.

Pour tout entier $x$ :

- si $x$ est pair, alors $x^2\equiv 0\pmod 4$ ;
- si $x$ est impair, alors $x^2\equiv 1\pmod 4$.

Donc une somme de deux carrés modulo $4$ peut être congrue à $0$, $1$ ou $2$, mais jamais à $3$.

En particulier, un nombre premier impair somme de deux carrés ne peut pas être congru à $3$ modulo $4$. Il doit donc être congru à $1$ modulo $4$.

### 4.3. Pourquoi les premiers $p\equiv 1\pmod 4$ sont-ils exactement les bons ?

La condition $p\equiv 1\pmod 4$ équivaut au fait que $-1$ est un carré modulo $p$.

Autrement dit, il existe $u$ tel que

$$
u^2\equiv -1\pmod p.
$$

Cette congruence dit que $p$ divise $u^2+1$. Donc un multiple de $p$ est déjà somme de deux carrés :

$$
u^2+1^2.
$$

La descente de Fermat-Euler transforme ensuite cette représentation d'un multiple de $p$ en une représentation de $p$ lui-même.

Dans le langage de $\mathbf Z[i]$, la même idée dit que $p$ divise

$$
(u+i)(u-i).
$$

Mais $p$ ne divise ni $u+i$ ni $u-i$ dans $\mathbf Z[i]$. Donc $p$ n'est pas premier dans $\mathbf Z[i]$ ; il se décompose, et cette décomposition donne $p=a^2+b^2$.

### 4.4. Pourquoi la factorisation dans $\mathbf Z[i]$ rend-elle le résultat naturel ?

Parce que la formule

$$
x^2+y^2=(x+iy)(x-iy)
$$

transforme une somme de carrés en une norme multiplicative.

La propriété centrale devient :

$$
N(\alpha\beta)=N(\alpha)N(\beta).
$$

Donc les représentations par $x^2+y^2$ sont contrôlées par la multiplication dans $\mathbf Z[i]$.

Le théorème des deux carrés dit alors comment les nombres premiers ordinaires se comportent dans $\mathbf Z[i]$ :

- $2$ est ramifié ;
- les premiers $p\equiv 1\pmod 4$ se décomposent ;
- les premiers $q\equiv 3\pmod 4$ restent premiers.

### 4.5. Pourquoi ce résultat annonce-t-il la théorie algébrique des nombres ?

Parce qu'il contient déjà le schéma suivant :

1. on part d'une équation diophantienne dans $\mathbf Z$ ;
2. on introduit un anneau plus grand ;
3. on y interprète l'équation comme une factorisation ou une norme ;
4. on utilise la structure arithmétique de cet anneau ;
5. on revient à une conclusion sur les entiers ordinaires.

Ce schéma est exactement celui qui se développera avec :

- $\mathbf Z[i]$ pour les sommes de deux carrés ;
- $\mathbf Z[\zeta_p]$ pour Fermat et Kummer ;
- les anneaux d'entiers $\mathcal O_K$ pour Dedekind ;
- les idéaux pour restaurer la factorisation unique.

---

## 5. Démonstration 1 — Nécessité élémentaire

**Proposition.** Si $p$ est un nombre premier impair et si

$$
p=x^2+y^2
$$

avec $x,y\in\mathbf Z$, alors

$$
p\equiv 1\pmod 4.
$$

**Preuve.**

Pour tout entier $z$, on a :

- si $z$ est pair, alors $z^2\equiv 0\pmod 4$ ;
- si $z$ est impair, alors $z^2\equiv 1\pmod 4$.

Donc un carré est congru à $0$ ou à $1$ modulo $4$.

Ainsi $x^2+y^2$ est congru modulo $4$ à l'une des valeurs suivantes :

$$
0+0,\quad 0+1,\quad 1+0,\quad 1+1.
$$

Donc

$$
x^2+y^2\equiv 0,1,2\pmod 4.
$$

Comme $p$ est un nombre premier impair, on a nécessairement

$$
p\equiv 1\pmod 4
$$

ou

$$
p\equiv 3\pmod 4.
$$

Mais $p=x^2+y^2$ ne peut pas être congru à $3$ modulo $4$. Donc

$$
p\equiv 1\pmod 4.
$$

Cela prouve la nécessité.

---

## 6. Démonstration 2 — Identité des deux carrés et multiplicativité

**Proposition.** Pour tous entiers $a,b,c,d$, on a

$$
(a^2+b^2)(c^2+d^2)
=
(ac-bd)^2+(ad+bc)^2.
$$

**Preuve.**

On développe le membre de droite :

$$
(ac-bd)^2+(ad+bc)^2
$$

$$
=
a^2c^2-2abcd+b^2d^2+a^2d^2+2abcd+b^2c^2.
$$

Les termes $-2abcd$ et $2abcd$ s'annulent. Il reste

$$
a^2c^2+b^2d^2+a^2d^2+b^2c^2.
$$

On regroupe :

$$
a^2(c^2+d^2)+b^2(c^2+d^2).
$$

Donc

$$
(ac-bd)^2+(ad+bc)^2
=
(a^2+b^2)(c^2+d^2).
$$

Cela prouve l'identité.

**Conséquence.** Si $m$ et $n$ sont deux sommes de deux carrés, alors $mn$ est encore une somme de deux carrés.

En effet, si

$$
m=a^2+b^2
$$

et

$$
n=c^2+d^2,
$$

alors

$$
mn=(ac-bd)^2+(ad+bc)^2.
$$

Cette identité explique pourquoi la version générale du théorème peut être déduite du cas des nombres premiers.

Si :

- $2$ est somme de deux carrés ;
- tout premier $p\equiv 1\pmod 4$ est somme de deux carrés ;
- tout produit de sommes de deux carrés est somme de deux carrés ;

alors tout entier dont les facteurs premiers $q\equiv 3\pmod 4$ apparaissent avec exposant pair est somme de deux carrés. En effet, chaque facteur $q^{2r}$ est lui-même un carré :

$$
q^{2r}=(q^r)^2+0^2.
$$

Donc ces facteurs ne posent pas d'obstruction.

---

## 7. Démonstration 3 — Lemme des premiers $3\pmod 4$

### 7.1. Critère utilisé

Nous utiliserons le critère d'Euler.

**Critère d'Euler.** Soit $p$ un nombre premier impair et soit $a$ un entier non divisible par $p$. Alors :

$$
a^{(p-1)/2}\equiv 1\pmod p
$$

si $a$ est un carré modulo $p$, et

$$
a^{(p-1)/2}\equiv -1\pmod p
$$

si $a$ n'est pas un carré modulo $p$.

En particulier, pour $a=-1$, on obtient

$$
(-1)^{(p-1)/2}\equiv 1\pmod p
$$

si et seulement si $-1$ est un carré modulo $p$.

Donc $-1$ est un carré modulo $p$ si et seulement si $p\equiv 1\pmod 4$.

### 7.2. Lemme fondamental

**Lemme.** Soit $q$ un nombre premier tel que $q\equiv 3\pmod 4$. Si

$$
q\mid x^2+y^2,
$$

alors

$$
q\mid x
$$

et

$$
q\mid y.
$$

**Preuve.**

Supposons que

$$
q\mid x^2+y^2.
$$

On a donc

$$
x^2+y^2\equiv 0\pmod q.
$$

Si $q$ ne divise pas $y$, alors $y$ est inversible modulo $q$. On peut multiplier par l'inverse de $y^2$ modulo $q$. On obtient

$$
(xy^{-1})^2+1\equiv 0\pmod q.
$$

Donc

$$
(xy^{-1})^2\equiv -1\pmod q.
$$

Ainsi $-1$ serait un carré modulo $q$.

Mais $q\equiv 3\pmod 4$, donc, d'après le critère d'Euler, $-1$ n'est pas un carré modulo $q$.

Contradiction.

Donc $q$ divise $y$.

Alors, comme $q$ divise $x^2+y^2$ et $q$ divise $y$, on a aussi

$$
q\mid x^2.
$$

Comme $q$ est premier, cela implique

$$
q\mid x.
$$

Donc $q$ divise $x$ et $y$.

Le cas où $q$ ne divise pas $x$ se traite de la même manière. La conclusion est donc établie.

### 7.3. Conséquence sur les exposants

Soit $n=x^2+y^2$, et soit $q\equiv 3\pmod 4$ un nombre premier divisant $n$.

Par le lemme, $q$ divise $x$ et $y$. Donc il existe $x_1,y_1\in\mathbf Z$ tels que

$$
x=qx_1
$$

et

$$
y=qy_1.
$$

Alors

$$
n=x^2+y^2=q^2(x_1^2+y_1^2).
$$

Donc si $q$ divise une somme de deux carrés, il la divise en réalité au moins au carré, sauf si l'on continue à extraire $q$ de $x_1$ et $y_1$.

En répétant l'argument, on voit que l'exposant de $q$ dans $n$ est nécessairement pair.

Ainsi, tout premier $q\equiv 3\pmod 4$ apparaît avec exposant pair dans un entier somme de deux carrés.

---

## 8. Démonstration 4 — Existence pour $p\equiv 1\pmod 4$ par descente

Nous démontrons maintenant la partie difficile sous une forme proche de l'esprit Fermat-Euler.

**Théorème.** Soit $p$ un nombre premier tel que

$$
p\equiv 1\pmod 4.
$$

Alors il existe $x,y\in\mathbf Z$ tels que

$$
p=x^2+y^2.
$$

### 8.1. Première étape : obtenir un multiple de $p$ somme de deux carrés

Comme $p\equiv 1\pmod 4$, le critère d'Euler implique que $-1$ est un carré modulo $p$.

Donc il existe un entier $u$ tel que

$$
u^2\equiv -1\pmod p.
$$

Autrement dit,

$$
p\mid u^2+1.
$$

Donc il existe un entier $m>0$ tel que

$$
u^2+1=mp.
$$

Ainsi un multiple de $p$ est somme de deux carrés :

$$
mp=u^2+1^2.
$$

En remplaçant $u$ par le représentant congru à $u$ compris entre $-p/2$ et $p/2$, on peut supposer

$$
u^2\leq p^2/4.
$$

Donc

$$
mp=u^2+1\leq p^2/4+1.
$$

Pour $p\geq 5$, cela donne

$$
m<p.
$$

Le cas $p=2$ est déjà traité. Comme $p\equiv 1\pmod 4$ et $p$ est impair, on a $p\geq 5$.

Nous avons donc trouvé un entier $m$ tel que

$$
0<m<p
$$

et

$$
mp=x^2+y^2
$$

pour certains entiers $x,y$.

### 8.2. Choix minimal

Choisissons un entier $m>0$ minimal tel que :

1. $m<p$ ;
2. il existe $x,y\in\mathbf Z$ avec

$$
mp=x^2+y^2.
$$

Nous allons montrer que ce minimum vaut $1$.

Si $m=1$, alors

$$
p=x^2+y^2,
$$

et le théorème est démontré.

Supposons donc, pour obtenir une contradiction, que

$$
m>1.
$$

### 8.3. Réduction des coordonnées modulo $m$

On a

$$
mp=x^2+y^2.
$$

Réduisons $x$ et $y$ modulo $m$.

Choisissons des entiers $r,s$ tels que :

$$
r\equiv x\pmod m,
$$

$$
s\equiv y\pmod m,
$$

et

$$
|r|\leq m/2,
$$

$$
|s|\leq m/2.
$$

Alors

$$
r^2+s^2\equiv x^2+y^2\pmod m.
$$

Or

$$
x^2+y^2=mp,
$$

donc

$$
x^2+y^2\equiv 0\pmod m.
$$

Ainsi

$$
r^2+s^2\equiv 0\pmod m.
$$

Il existe donc un entier $n\geq 0$ tel que

$$
r^2+s^2=mn.
$$

Mais, par le choix de $r$ et $s$,

$$
r^2+s^2\leq m^2/4+m^2/4=m^2/2.
$$

Donc

$$
mn\leq m^2/2.
$$

Comme $m>0$, on obtient

$$
n\leq m/2.
$$

En particulier,

$$
n<m.
$$

Nous devons exclure le cas $n=0$.

Si $n=0$, alors

$$
r^2+s^2=0,
$$

donc $r=s=0$. Cela signifie que $m$ divise $x$ et $y$.

Alors $m^2$ divise $x^2+y^2=mp$, donc $m$ divise $p$. Comme $p$ est premier et $0<m<p$, c'est impossible si $m>1$.

Donc

$$
0<n<m.
$$

### 8.4. Construction d'une représentation plus petite

Utilisons l'identité des deux carrés :

$$
(x^2+y^2)(r^2+s^2)
=
(xr+ys)^2+(xs-yr)^2.
$$

Le signe choisi ici est équivalent à l'identité usuelle.

Comme

$$
x^2+y^2=mp
$$

et

$$
r^2+s^2=mn,
$$

on obtient

$$
m^2pn=(xr+ys)^2+(xs-yr)^2.
$$

Nous allons montrer que les deux entiers $xr+ys$ et $xs-yr$ sont divisibles par $m$.

Comme $r\equiv x\pmod m$ et $s\equiv y\pmod m$, on a

$$
xr+ys\equiv x^2+y^2\pmod m.
$$

Or $x^2+y^2=mp$, donc

$$
xr+ys\equiv 0\pmod m.
$$

De même,

$$
xs-yr\equiv xy-yx\pmod m.
$$

Donc

$$
xs-yr\equiv 0\pmod m.
$$

Il existe donc $A,B\in\mathbf Z$ tels que

$$
xr+ys=mA
$$

et

$$
xs-yr=mB.
$$

En remplaçant dans l'identité, on obtient

$$
m^2pn=m^2A^2+m^2B^2.
$$

On divise par $m^2$ :

$$
pn=A^2+B^2.
$$

Donc $pn$ est une somme de deux carrés.

Mais nous avons montré que

$$
0<n<m.
$$

Cela contredit la minimalité de $m$.

Donc l'hypothèse $m>1$ est impossible.

Par conséquent,

$$
m=1.
$$

Ainsi

$$
p=x^2+y^2.
$$

La preuve par descente est terminée.

---

## 9. Démonstration 5 — Preuve moderne par les entiers de Gauss

### 9.1. Définition

On définit l'anneau des entiers de Gauss par

$$
\mathbf Z[i]=\{a+bi:a,b\in\mathbf Z\}.
$$

L'addition et la multiplication sont celles des nombres complexes.

On définit la conjugaison par

$$
\overline{a+bi}=a-bi.
$$

On définit la norme par

$$
N(a+bi)=(a+bi)(a-bi)=a^2+b^2.
$$

### 9.2. Propriétés de la norme

**Proposition.** Pour tous $\alpha,\beta\in\mathbf Z[i]$, on a

$$
N(\alpha\beta)=N(\alpha)N(\beta).
$$

**Preuve.**

On utilise la conjugaison complexe. On a

$$
N(\alpha\beta)=\alpha\beta\overline{\alpha\beta}.
$$

Comme la conjugaison est multiplicative,

$$
\overline{\alpha\beta}=\overline{\alpha}\overline{\beta}.
$$

Donc

$$
N(\alpha\beta)=\alpha\beta\overline{\alpha}\overline{\beta}.
$$

La multiplication complexe est commutative, donc

$$
N(\alpha\beta)=\alpha\overline{\alpha}\beta\overline{\beta}.
$$

Ainsi

$$
N(\alpha\beta)=N(\alpha)N(\beta).
$$

### 9.3. Euclidianité de $\mathbf Z[i]$

**Théorème.** L'anneau $\mathbf Z[i]$ est euclidien pour la norme $N$.

Cela signifie que pour tous $\alpha,\beta\in\mathbf Z[i]$ avec $\beta\neq 0$, il existe $q,r\in\mathbf Z[i]$ tels que

$$
\alpha=q\beta+r
$$

et

$$
N(r)<N(\beta).
$$

**Preuve.**

Considérons le quotient complexe

$$
z=\alpha/\beta.
$$

Écrivons

$$
z=x+iy
$$

avec $x,y\in\mathbf R$.

Choisissons des entiers $m,n\in\mathbf Z$ tels que

$$
|x-m|\leq 1/2
$$

et

$$
|y-n|\leq 1/2.
$$

Posons

$$
q=m+ni.
$$

Alors

$$
z-q=(x-m)+i(y-n).
$$

Donc

$$
|z-q|^2=(x-m)^2+(y-n)^2\leq 1/4+1/4=1/2.
$$

Posons

$$
r=\alpha-q\beta.
$$

Alors

$$
r=\beta(z-q).
$$

En prenant les normes,

$$
N(r)=N(\beta)N(z-q).
$$

Ici $N(z-q)$ désigne le carré du module complexe de $z-q$. On a

$$
N(z-q)\leq 1/2.
$$

Donc

$$
N(r)\leq N(\beta)/2<N(\beta).
$$

Cela prouve la division euclidienne dans $\mathbf Z[i]$.

Ainsi $\mathbf Z[i]$ est euclidien.

**Conséquence.** L'anneau $\mathbf Z[i]$ est principal, donc factoriel. En particulier, tout élément irréductible y est premier.

### 9.4. Factorisation de $p$

Soit $p$ un nombre premier impair tel que

$$
p\equiv 1\pmod 4.
$$

Alors $-1$ est un carré modulo $p$. Il existe donc $u\in\mathbf Z$ tel que

$$
u^2\equiv -1\pmod p.
$$

Donc

$$
p\mid u^2+1.
$$

Dans $\mathbf Z[i]$, cela s'écrit

$$
p\mid (u+i)(u-i).
$$

Mais $p$ ne divise pas $u+i$ dans $\mathbf Z[i]$, car cela exigerait que $p$ divise à la fois $u$ et $1$.

De même, $p$ ne divise pas $u-i$.

Si $p$ était premier dans $\mathbf Z[i]$, alors de

$$
p\mid (u+i)(u-i)
$$

on pourrait déduire que $p$ divise $u+i$ ou $u-i$.

Ce n'est pas le cas. Donc $p$ n'est pas premier dans $\mathbf Z[i]$.

Comme $\mathbf Z[i]$ est factoriel, cela implique que $p$ n'est pas irréductible. Il existe donc des éléments non inversibles $\alpha,\beta\in\mathbf Z[i]$ tels que

$$
p=\alpha\beta.
$$

En prenant les normes :

$$
p^2=N(p)=N(\alpha)N(\beta).
$$

Comme $\alpha$ et $\beta$ ne sont pas inversibles, on a

$$
N(\alpha)>1
$$

et

$$
N(\beta)>1.
$$

Les normes sont des entiers positifs. Donc la seule possibilité est

$$
N(\alpha)=p
$$

et

$$
N(\beta)=p.
$$

Écrivons

$$
\alpha=a+bi.
$$

Alors

$$
N(\alpha)=a^2+b^2=p.
$$

Donc

$$
p=a^2+b^2.
$$

Cela démontre le théorème pour les nombres premiers $p\equiv 1\pmod 4$.

### 9.5. Comportement des premiers dans $\mathbf Z[i]$

La preuve suggère une classification plus forte :

- $2$ est ramifié, car

$$
2=(1+i)(1-i).
$$

- Si $p\equiv 1\pmod 4$, alors $p$ se décompose dans $\mathbf Z[i]$ :

$$
p=(a+bi)(a-bi).
$$

- Si $q\equiv 3\pmod 4$, alors $q$ reste premier dans $\mathbf Z[i]$.

Cette classification est la version algébrique du théorème des deux carrés.

---

## 10. Démonstration 6 — Lecture par les formes quadratiques

La forme

$$
x^2+y^2
$$

est une forme quadratique binaire entière.

Sous la forme générale

$$
ax^2+bxy+cy^2,
$$

elle correspond à

$$
a=1,\quad b=0,\quad c=1.
$$

Son discriminant est

$$
D=b^2-4ac=-4.
$$

La question du théorème des deux carrés est donc :

> Quels nombres premiers sont représentés par la forme quadratique de discriminant $-4$ ?

La réponse est :

- $2$ ;
- les premiers $p\equiv 1\pmod 4$.

Les premiers $q\equiv 3\pmod 4$ ne sont pas représentés.

Ce résultat est un modèle pour des questions plus générales :

- quels premiers sont de la forme $x^2+2y^2$ ?
- quels premiers sont de la forme $x^2+3y^2$ ?
- quels premiers sont de la forme $x^2+ny^2$ ?
- quels entiers sont représentés par $ax^2+bxy+cy^2$ ?

Gauss comprend que ces questions ne doivent pas être traitées une par une. Il faut classifier les formes quadratiques de discriminant donné.

Deux formes peuvent représenter les mêmes entiers pour des raisons de changement de variables. Il faut donc étudier les formes à équivalence près.

La composition de Gauss montre ensuite que les classes de formes de même discriminant possèdent une structure de groupe. C'est l'ancêtre des groupes de classes.

Dans le cas $D=-4$, la théorie est très simple : l'anneau correspondant est $\mathbf Z[i]$, et le groupe de classes est trivial. C'est pourquoi le théorème des deux carrés possède une formulation particulièrement nette.

La réciprocité quadratique intervient parce que représenter un premier $p$ par une forme de discriminant $D$ est lié au fait que $D$ soit un carré modulo $p$. Pour $D=-4$, cela revient à demander que $-1$ soit un carré modulo $p$, c'est-à-dire

$$
p\equiv 1\pmod 4.
$$

Ainsi, le théorème des deux carrés est le premier exemple où se rencontrent :

- représentation par formes quadratiques ;
- congruences ;
- réciprocité ;
- factorisation dans un anneau quadratique ;
- théorie des classes.

---

## 11. Version générale du théorème

**Théorème.** Soit $n\geq 1$ un entier. Alors $n$ est somme de deux carrés si et seulement si tout nombre premier $q\equiv 3\pmod 4$ apparaît avec exposant pair dans la factorisation première de $n$.

### 11.1. Nécessité

Supposons que

$$
n=x^2+y^2.
$$

Soit $q\equiv 3\pmod 4$ un nombre premier divisant $n$.

D'après le lemme des premiers $3\pmod 4$, si $q$ divise $x^2+y^2$, alors $q$ divise $x$ et $y$.

Donc

$$
x=qx_1
$$

et

$$
y=qy_1.
$$

Alors

$$
n=q^2(x_1^2+y_1^2).
$$

Ainsi, chaque fois que $q$ divise $n$, il apparaît au moins par un facteur $q^2$.

En répétant l'argument, on voit que l'exposant de $q$ dans $n$ est pair.

Donc tout premier $q\equiv 3\pmod 4$ apparaît avec exposant pair.

### 11.2. Suffisance

Supposons maintenant que tout premier $q\equiv 3\pmod 4$ apparaisse avec exposant pair dans $n$.

Écrivons

$$
n=2^a
\prod_{p\equiv 1\pmod 4}p^{\alpha_p}
\prod_{q\equiv 3\pmod 4}q^{2\gamma_q}.
$$

Chaque facteur du produit est une somme de deux carrés :

- $2=1^2+1^2$ ;
- si $p\equiv 1\pmod 4$, alors $p$ est somme de deux carrés ;
- une puissance d'une somme de deux carrés est encore une somme de deux carrés, par multiplicativité ;
- $q^{2\gamma_q}$ est un carré, donc

$$
q^{2\gamma_q}=(q^{\gamma_q})^2+0^2.
$$

Comme le produit de deux sommes de deux carrés est encore une somme de deux carrés, l'entier $n$ est une somme de deux carrés.

Cela démontre la version générale.

---

## 12. Exemples calculés

### 12.1. Le nombre $5$

On a

$$
5=1^2+2^2.
$$

Cela correspond à

$$
5\equiv 1\pmod 4.
$$

### 12.2. Le nombre $13$

On a

$$
13=2^2+3^2.
$$

Et

$$
13\equiv 1\pmod 4.
$$

### 12.3. Le nombre $17$

On a

$$
17=1^2+4^2.
$$

Et

$$
17\equiv 1\pmod 4.
$$

### 12.4. Le nombre $29$

On a

$$
29=2^2+5^2.
$$

Et

$$
29\equiv 1\pmod 4.
$$

### 12.5. Le nombre $65$

On a

$$
65=5\cdot 13.
$$

Or

$$
5=1^2+2^2
$$

et

$$
13=2^2+3^2.
$$

En utilisant l'identité des deux carrés :

$$
(1^2+2^2)(2^2+3^2)
=
(1\cdot 2-2\cdot 3)^2+(1\cdot 3+2\cdot 2)^2.
$$

Donc

$$
65=(-4)^2+7^2.
$$

Ainsi

$$
65=4^2+7^2.
$$

On a aussi

$$
65=1^2+8^2.
$$

### 12.6. Le nombre $325$

On a

$$
325=5^2\cdot 13.
$$

Comme $5$ et $13$ sont congrus à $1$ modulo $4$, l'entier $325$ est somme de deux carrés.

Par exemple :

$$
325=1^2+18^2.
$$

En effet :

$$
1+324=325.
$$

On a aussi :

$$
325=6^2+17^2.
$$

### 12.7. Un entier non représentable : $21$

On a

$$
21=3\cdot 7.
$$

Les deux premiers $3$ et $7$ sont congrus à $3$ modulo $4$ :

$$
3\equiv 3\pmod 4
$$

et

$$
7\equiv 3\pmod 4.
$$

Ils apparaissent tous les deux avec exposant $1$, donc impair.

Ainsi $21$ n'est pas somme de deux carrés.

### 12.8. Rôle des exposants pairs

Le nombre $45$ est représentable :

$$
45=3^2\cdot 5.
$$

Le premier $3\equiv 3\pmod 4$ apparaît avec exposant $2$, donc pair. Le premier $5\equiv 1\pmod 4$ ne pose pas d'obstruction.

On a effectivement

$$
45=3^2+6^2.
$$

En revanche,

$$
15=3\cdot 5
$$

n'est pas représentable, car $3\equiv 3\pmod 4$ apparaît avec exposant impair.

---

## 13. Dépendances conceptuelles

### Congruences

Les congruences permettent de détecter des obstructions. La première obstruction est modulo $4$ : une somme de deux carrés n'est jamais congrue à $3$ modulo $4$.

### Résidus quadratiques

La question de savoir si $-1$ est un carré modulo $p$ est centrale. Elle contrôle l'existence d'un entier $u$ tel que $u^2+1$ soit divisible par $p$.

### Critère d'Euler

Le critère d'Euler donne une manière efficace de décider si $-1$ est un carré modulo $p$. Il implique que $-1$ est un carré modulo $p$ exactement lorsque $p\equiv 1\pmod 4$.

### Descente infinie

La descente permet de passer d'une représentation d'un multiple de $p$ à une représentation de $p$ lui-même. C'est la méthode historique associée à Fermat et Euler.

### Identité des deux carrés

L'identité

$$
(a^2+b^2)(c^2+d^2)
=
(ac-bd)^2+(ad+bc)^2
$$

montre que la propriété d'être somme de deux carrés est multiplicative.

### Factorisation unique dans $\mathbf Z$

La factorisation première de $n$ permet de réduire la version générale du théorème au comportement des facteurs premiers.

### Anneau $\mathbf Z[i]$

L'anneau des entiers de Gauss rend visible la factorisation

$$
x^2+y^2=(x+iy)(x-iy).
$$

Il transforme le problème en une question de normes.

### Norme

La norme $N(a+bi)=a^2+b^2$ est multiplicative. C'est elle qui explique structurellement l'identité des deux carrés.

### Anneau euclidien

Le fait que $\mathbf Z[i]$ soit euclidien garantit la factorisation unique. C'est pourquoi on peut raisonner dans $\mathbf Z[i]$ presque comme dans $\mathbf Z$.

### Formes quadratiques binaires

La forme $x^2+y^2$ est la première forme quadratique binaire positive définie étudiée dans ce contexte. Elle ouvre la voie à la théorie générale de Gauss.

### Réciprocité quadratique

La condition $p\equiv 1\pmod 4$ équivaut à la résolubilité de $x^2\equiv -1\pmod p$. C'est un cas fondamental de la logique des résidus quadratiques et de la réciprocité.

---

## 14. Conséquences et prolongements

### 14.1. Vers les formes quadratiques

Le théorème des deux carrés pose une question modèle :

> Quels nombres sont représentés par $x^2+y^2$ ?

La généralisation naturelle est :

> Quels nombres sont représentés par $x^2+ny^2$ ?

Puis encore plus généralement :

> Quels nombres sont représentés par $ax^2+bxy+cy^2$ ?

C'est précisément le domaine des formes quadratiques binaires.

### 14.2. Vers Gauss

Gauss systématise les problèmes de représentation. Il ne se contente pas d'étudier une forme isolée : il classe les formes de discriminant donné, introduit leur composition et découvre une structure de groupe sur les classes.

Le théorème des deux carrés correspond au discriminant $-4$. C'est un cas simple, mais il contient déjà le germe de la théorie générale.

### 14.3. Vers Dedekind

La preuve par $\mathbf Z[i]$ montre qu'un problème sur $\mathbf Z$ peut devenir plus transparent dans un anneau d'entiers algébriques.

Ici,

$$
\mathbf Z[i]
$$

est l'anneau d'entiers de

$$
\mathbf Q(i).
$$

Dans ce cas, l'anneau est euclidien, donc la factorisation unique fonctionne. Mais dans d'autres anneaux d'entiers, la factorisation unique des éléments échoue.

Dedekind remplacera alors les éléments par les idéaux. La factorisation unique renaît sous la forme :

$$
I=\mathfrak p_1^{e_1}\cdots \mathfrak p_r^{e_r}.
$$

Le théorème des deux carrés est donc un ancêtre très concret de la théorie des idéaux.

### 14.4. Vers la théorie du corps de classes

Les questions du type :

> quels premiers sont représentés par une forme donnée ?

mènent progressivement à des lois de décomposition des premiers dans des extensions de corps de nombres.

Pour $x^2+y^2$, la condition est simple :

$$
p\equiv 1\pmod 4.
$$

Elle correspond au comportement de $p$ dans l'extension quadratique

$$
\mathbf Q(i)/\mathbf Q.
$$

Pour des formes plus compliquées, les conditions deviennent plus subtiles. La théorie du corps de classes donnera finalement un cadre général reliant :

- formes quadratiques ;
- idéaux ;
- groupes de classes ;
- extensions abéliennes ;
- lois de réciprocité ;
- décomposition des nombres premiers.

---

## 15. Exercices

### Niveau 1 — Congruences élémentaires

1. Montrer qu'un carré est toujours congru à $0$ ou $1$ modulo $4$.
   - Indication : distinguer les entiers pairs et impairs.

2. Montrer qu'un entier congru à $3$ modulo $4$ ne peut pas être somme de deux carrés.
   - Indication : utiliser l'exercice précédent.

3. Vérifier que $2$, $5$, $13$, $17$, $29$, $37$ sont des sommes de deux carrés.
   - Indication : chercher directement de petits carrés.

4. Montrer que $3$, $7$, $11$, $19$, $23$ ne sont pas des sommes de deux carrés.
   - Indication : regarder les congruences modulo $4$.

### Niveau 2 — Identité des deux carrés

5. Démontrer l'identité de Brahmagupta-Fibonacci.
   - Indication : développer les deux membres.

6. Utiliser l'identité pour écrire $65$ comme somme de deux carrés à partir de $5$ et $13$.
   - Indication : utiliser $5=1^2+2^2$ et $13=2^2+3^2$.

7. Montrer que le produit de deux sommes de deux carrés est une somme de deux carrés.
   - Indication : appliquer directement l'identité.

8. Montrer que toute puissance d'une somme de deux carrés est une somme de deux carrés.
   - Indication : faire une récurrence.

### Niveau 3 — Premiers $3\pmod 4$

9. Soit $q\equiv 3\pmod 4$ premier. Montrer que $-1$ n'est pas un carré modulo $q$.
   - Indication : utiliser le critère d'Euler.

10. Montrer que si $q\equiv 3\pmod 4$ divise $x^2+y^2$, alors $q$ divise $x$ et $y$.
    - Indication : raisonner par contradiction en divisant par $y^2$ modulo $q$.

11. En déduire que si $n=x^2+y^2$, alors tout premier $q\equiv 3\pmod 4$ apparaît avec exposant pair dans $n$.
    - Indication : extraire successivement $q^2$.

12. Décider si les entiers $45$, $75$, $90$, $125$, $147$, $325$ sont sommes de deux carrés.
    - Indication : factoriser et appliquer le critère général.

### Niveau 4 — Descente

13. Soit $p\equiv 1\pmod 4$ premier. Montrer qu'il existe $u$ tel que $u^2+1$ soit divisible par $p$.
    - Indication : utiliser le critère d'Euler.

14. Montrer qu'il existe $m<p$ tel que $mp$ soit somme de deux carrés.
    - Indication : choisir $u$ entre $-p/2$ et $p/2$.

15. Reprendre la preuve par descente et vérifier précisément pourquoi $n<m$.
    - Indication : utiliser $|r|\leq m/2$ et $|s|\leq m/2$.

16. Dans la preuve par descente, démontrer que $xr+ys$ et $xs-yr$ sont divisibles par $m$.
    - Indication : réduire modulo $m$.

### Niveau 5 — Entiers de Gauss

17. Montrer que $N(\alpha\beta)=N(\alpha)N(\beta)$ dans $\mathbf Z[i]$.
    - Indication : utiliser la conjugaison.

18. Déterminer les unités de $\mathbf Z[i]$.
    - Indication : résoudre $N(\alpha)=1$.

19. Démontrer la division euclidienne dans $\mathbf Z[i]$.
    - Indication : approximer un complexe par un point du réseau $\mathbf Z[i]$.

20. Montrer que si $p\equiv 1\pmod 4$, alors $p$ n'est pas irréductible dans $\mathbf Z[i]$.
    - Indication : utiliser $p\mid (u+i)(u-i)$.

21. Montrer que si $q\equiv 3\pmod 4$, alors $q$ est irréductible dans $\mathbf Z[i]$.
    - Indication : si $q=\alpha\beta$, regarder les normes.

### Niveau 6 — Formes quadratiques et histoire

22. Calculer le discriminant de la forme $x^2+y^2$.
    - Indication : utiliser $D=b^2-4ac$.

23. Expliquer pourquoi le théorème des deux carrés est un problème de représentation par une forme quadratique.
    - Indication : formuler la question en termes de valeurs prises par $x^2+y^2$.

24. Comparer les questions suivantes : représenter $p$ par $x^2+y^2$, par $x^2+2y^2$, puis par $ax^2+bxy+cy^2$.
    - Indication : repérer ce qui reste semblable et ce qui change.

25. Expliquer en une page pourquoi ce théorème relie Fermat, Euler, Gauss et Dedekind.
    - Indication : suivre le fil représentation, descente, formes quadratiques, anneaux d'entiers.

---

## 16. Résultats utilisés sans démonstration complète

### 16.1. Critère d'Euler

**Énoncé.** Soit $p$ un nombre premier impair et soit $a$ un entier non divisible par $p$. Alors :

$$
a^{(p-1)/2}\equiv 1\pmod p
$$

si $a$ est un carré modulo $p$, et

$$
a^{(p-1)/2}\equiv -1\pmod p
$$

sinon.

**Utilisation.** Il sert à décider quand $-1$ est un carré modulo $p$.

**Fiche future.** `entries/euler-criterion.md`.

### 16.2. Existence d'une racine carrée de $-1$ modulo $p$

**Énoncé.** Si $p$ est un nombre premier impair, alors $-1$ est un carré modulo $p$ si et seulement si

$$
p\equiv 1\pmod 4.
$$

**Utilisation.** C'est le point de départ de la preuve d'existence pour $p=x^2+y^2$.

**Fiche future.** `entries/minus-one-quadratic-residue.md`.

### 16.3. Anneau euclidien implique factoriel

**Énoncé.** Tout anneau euclidien est principal, et tout anneau principal est factoriel.

**Utilisation.** Ce résultat permet d'utiliser la factorisation unique dans $\mathbf Z[i]$.

**Fiche future.** `entries/euclidean-domain-ufd.md`.

### 16.4. Euclidianité de $\mathbf Z[i]$

**Énoncé.** L'anneau $\mathbf Z[i]$ est euclidien pour la norme

$$
N(a+bi)=a^2+b^2.
$$

**Utilisation.** Cela garantit que $\mathbf Z[i]$ possède une bonne théorie de la divisibilité.

**Statut dans cette fiche.** Une preuve a été donnée, mais elle peut recevoir une fiche indépendante plus détaillée.

**Fiche future.** `entries/gaussian-integers-euclidean.md`.

---

## 17. Références

### Fermat

Fermat est la source historique du résultat et de la méthode de descente infinie. Ses énoncés sur les représentations par formes quadratiques motivent toute la ligne Fermat-Euler-Gauss.

### Euler

Euler donne les premières démonstrations systématiques de plusieurs résultats annoncés par Fermat. Il est essentiel pour comprendre comment l'identité des deux carrés et la descente deviennent des techniques effectives.

### Gauss, Disquisitiones Arithmeticae

Les Disquisitiones replacent le théorème dans la théorie générale des congruences, des résidus quadratiques et des formes quadratiques binaires.

### David A. Cox, Primes of the Form $x^2+ny^2$

Référence moderne très utile pour comprendre comment le problème $x^2+y^2$ se généralise à $x^2+ny^2$, puis aux formes quadratiques et au corps de classes.

### André Weil, Number Theory: An Approach Through History from Hammurapi to Legendre

Référence historique et mathématique pour replacer Fermat, Euler, Lagrange et Legendre dans l'évolution longue de la théorie des nombres.

### Harold M. Edwards, Fermat's Last Theorem

Utile pour suivre la ligne qui va de Fermat à Kummer, et pour comprendre comment les questions de factorisation dans des anneaux plus grands apparaissent naturellement.

### Ireland-Rosen, A Classical Introduction to Modern Number Theory

Manuel moderne utile pour les congruences, la réciprocité quadratique, les sommes de Gauss et les méthodes classiques de théorie des nombres.

---

## 18. Liens internes suggérés

- [[fermat-little-theorem]]
- [[quadratic-reciprocity]]
- [[gauss-composition]]
- [[dedekind-ideal-factorization]]
- [[quadratic-gauss-sums]]
- [[dirichlet-arithmetic-progressions]]
- [[quadratic-forms]]
- [[gaussian-integers]]
- [[euler-criterion]]
- [[minus-one-quadratic-residue]]
- [[fermat]]
- [[euler]]
- [[lagrange]]
- [[legendre]]
- [[gauss]]
- [[dedekind]]

---

## 19. Version ultra-courte

Le théorème des deux carrés affirme qu'un entier positif $n$ est de la forme $x^2+y^2$ si et seulement si tout nombre premier $q\equiv 3\pmod 4$ apparaît avec exposant pair dans sa factorisation première.

Pour les nombres premiers, cela signifie que $2$ et les premiers $p\equiv 1\pmod 4$ sont exactement les premiers sommes de deux carrés.

La nécessité vient du fait qu'un carré modulo $4$ vaut $0$ ou $1$.

La suffisance repose sur deux idées : l'identité multiplicative des deux carrés et le fait que si $p\equiv 1\pmod 4$, alors $-1$ est un carré modulo $p$.

Historiquement, Fermat énonce le résultat, Euler le démontre par descente, Gauss l'intègre dans la théorie des formes quadratiques, et la lecture moderne par $\mathbf Z[i]$ l'interprète comme une propriété de normes et de factorisation.

La formule centrale est :

$$
x^2+y^2=N(x+iy).
$$

Ainsi, le théorème annonce déjà la grande méthode de la théorie algébrique des nombres : agrandir l'anneau pour transformer une question diophantienne en question de factorisation.
