## Espaces fonctionnels d'intérêt

Dans le cas déterministe, on s'intéressera ici à des signaux $x(t), t\in \mathbb{R},$ qui sont des fonctions dîtes à temps continu et à valeur dans $\mathbb{R}$ ou plus généralement $\mathbb{C}.$ Muni des opérations usuelles d'addition et de multiplication par un scalaire, cet ensemble de fonctions définit un espace vectoriel noté

$$\mathbb{C}^{\mathbb{R}}=\{x \mid x(t) \in \mathbb{C}, t \in \mathbb{R}\}.$$

Parmi les sous-espaces vectoriels d'intérêt, on aura l'espace vectoriel normé $\mathcal{L}_{2}(\mathbb{R})$ qui est l'espace des fonctions de carré intégrable qui correspondra aux signaux à énergie finie. On le notera 

$$\mathcal{L}^{2}(\mathbb{R})\triangleq \left\{  x: \mathbb{R} \rightarrow \mathbb{C}| \int | x(t) |^{2} dt <\infty   \right\}.$$

Le produit scalaire associé est donné par

$$\langle x, y\rangle=\int_{-\infty}^{\infty} x(t) y^{*}(t) d t,$$ 

où $^*$ représente l'opérateur de conjugaison complexe, et la norme
standard induite est donnée par

$$\|x\|_2=\sqrt{\langle x, x\rangle}=\left(\int_{-\infty}^{\infty}|x(t)|^{2} d t\right)^{1 / 2}.$$

D'autres espaces vectoriels normés pourront être d'intérêt, comme par exemple l'espace des fonctions bornées associé à la norme infinie

$$\mathcal{L}_{\infty}(\mathbb{R}) \triangleq \left\{x: \mathbb{R} \rightarrow \mathbb{C} \left| \sup_t \left|x(t)\right| < \infty \right.\right\}.$$

En particulier, appartiennent à cet espace toutes les fonctions $x(t)$ telles que pour $M$ fini, on vérifie $|x(t)| \leq M, \forall t \in \mathbb{R}.$ On aura encore l'espace des fonctions absolument intégrables donné par

$$\mathcal{L}_{1}(\mathbb{R}) \triangleq \left\{x:\mathbb{R} \rightarrow \mathbb{C}\left|\int_{\mathbb{R}}\left| x(t)\right| d t<\infty \right.\right\}.$$

De manière similaire, pour des signaux périodiques de périodes $T$, i.e., tels que $x(t+T)=x(t), \quad t \in \mathbb{R}$, on définira
l'espace $\mathcal{L}_{1}\left(\left[-\frac{T}{2} , \frac{T}{2} \right)\right)$ tel que $\int_{-T / 2}^{T / 2}|x(t)| d t<\infty,$ et l'espace $\mathcal{L}_{2}\left(\left[-\frac{T}{2}, \frac{T}{2} \right)\right),$
tel que $\int_{-T / 2}^{T / 2}|x(t)|^{2} d t<\infty.$

