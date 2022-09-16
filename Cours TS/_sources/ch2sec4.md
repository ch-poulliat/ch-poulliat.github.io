## Signaux aléatoires stationnaires


### Définition 

Une classe de signaux très utile pour les applications pratiques regroupe les signaux **aléatoires stationnaires
au sens large** (appelés aussi **stationnaires à l'ordre $2$**) (que nous appellerons par simplicité **signaux stationnaires**) vérifiant

$$
E[x(t)] = m \quad \textbf{(moyenne indépendante du temps)}
$$ 

et 

$$
E[x(t)x^*(t-\tau)] = R_x(\tau) \quad \textbf{(quantité indépendante du temps)}.
$$

La première propriété indique que la moyenne probabiliste du signal $x(t)$ à un instant donné $t$ ne dépend pas de cet instant $t$ et est
donc égale à une constante notée $m$, ce qui fait penser à un régime permanent ou à une sorte de stationnarité appelée stationnarité à
l'ordre $1$. La seconde propriété indique que le lien entre $x(t)$ et $x(t-\tau)$ (défini par $E[x(t)x^*(t-\tau)]$, ce qui sera expliqué plus
tard) ne dépend que de $\tau$, qui est la largeur de l'intervalle $] t- \tau, t[$ ou $]t , t-\tau[$ (suivant le signe de $\tau$). On supposera que $m$ et $R_x(\tau)$ sont des quantités bien définies, ce qui est le cas pour les signaux vérifiant 

$$
P=E[ |x(t)|^2] < \infty
$$ 

appelés **signaux aléatoires à puissance moyenne finie**. 

Cette classe de signaux admet un produit scalaire

$$\langle u(t), v(t) \rangle = E[ u(t) v^*(t)]$$ 

qui induit les définitions suivantes

```{prf:definition}

-   ***Fonction d'autocorrélation :***


    $$R_x(\tau)=\langle x(t), x(t-\tau) \rangle =E[  x(t)x^*(t-\tau)],$$

-   ***Fonction d'intercorrélation :***


    $$R_{xy}(\tau) = \langle x(t), y(t-\tau) \rangle =E[x(t) y^*(t-\tau)]$$

-   ***Densité spectrale de puissance :***


    $$s_x(f) = \textrm{TF}[R_x(\tau)] = \int_{\mathbb{R}} R_x(\tau) \exp \left(-j 2 \pi f \tau \right) d\tau.$$
```

Le spectre des signaux aléatoires stationnaires est donc naturellement défini par cette densité spectrale de puissance
$s_x(f)=\textrm{TF}[R_x(\tau)]$ avec $R_x(\tau)=\langle x(t), x(t-\tau) \rangle =E[  x(t)x^*(t-\tau)]$.

### Exemples

```{prf:example} Sinusoïde.

$$x(t)= A \cos(2 \pi f_0 t + \theta)$$

$\theta$ variable aléatoire uniforme sur $[0, 2\pi]$.

- *Fonction d'autocorrélation :*

    $$R_x(\tau)=\frac{A^2}{2} \cos(2 \pi f_0 \tau)$$
    

- *Densité spectrale de puissance :*

    $$s_x(f)=\frac{A^2}{4} \left[ \delta(f-f_0) + \delta(f+f_0)\right]$$
    
```

```{prf:example} Bruit blanc. 

Un bruit blanc vérifie les propriétés suivantes :

- *Fonction d'autocorrélation :*

    $$R_x(\tau)= \frac{N_0}{2} \delta(\tau)$$

- *Densité spectrale de puissance :*

    $$s_x(f)= \frac{N_0}{2}$$
    
```

