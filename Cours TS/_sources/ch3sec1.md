## Systèmes à temps continu: définitions et propriétés

### <span style="color:rgba(var(--pst-color-link),1)"> Système à temps continu</span>

Dans un cadre déterministe, un système à temps continu est un opérateur $T$ qui associe une fonction $y$ à une
fonction d'entrée $x,$ ie. $y=T[x]$ avec

$$y(t)=T[x(t)], \forall t \in \mathbb{R}.$$ 

Les entrées et sorties de ce système seront typiquement dans $\mathcal{L}_{+\infty}(\mathbb{R})$ ou
$\mathcal{L}_{2}(\mathbb{R}).$

### <span style="color:rgba(var(--pst-color-link),1)"> Système linéaire</span>

Un système sera dit linéaire s'il vérifie $\forall a_1,a_2 \in \mathbb{C},$

$$T\left[a_{1} x_{1}(t)+a_{2} x_{2}(t)\right]=a_{1} T\left[x_{1}(t)\right]+a_{2} T\left[x_{2}(t)\right].$$

### <span style="color:rgba(var(--pst-color-link),1)"> Système sans mémoire</span>

Un système sera dît sans mémoire si sa sortie à l'instant $t$ ne dépend que de l'entrée au même instant.

### <span style="color:rgba(var(--pst-color-link),1)"> Système causal</span>

Un système est dit causal si la sortie à l'instant $t$ ne dépend de l'entrée que pour des instants $t'\leq t$, i.e., la sortie un instant
donné ne dépend pas d'un instant futur. Cette propriété est souvent requise pour qu'un système physique analogique soit réalisable.
Cependant nous verrons que pour un signal numérique, cette contrainte peut être contournée car si le système est non causal cela suppose juste
que le système peut être réalisable au prix d'un délai de traitement avec stockage des échantillons.

### <span style="color:rgba(var(--pst-color-link),1)"> Système invariant par décalage</span>

Un système est dit invariant par décalage ou encore invariant dans le temps s'il vérifie la relation suivante:

$$\text {Si } y(t)=T[x(t)] \text { alors } T\left[x\left(t-t_{0}\right)\right]=y\left(t-t_{0}\right).$$

Cela signifie que si l'entrée du système est translatée dans le temps, la sortie l'est également du même décalage.

### <span style="color:rgba(var(--pst-color-link),1)"> Système stable : caractérisation générale </span>

Un système est dit stable si une entrée bornée produit une sortie bornée, i.e., si

$$x \in \mathcal{L}_{\infty}(\mathbb{R}) \Rightarrow y=T[x] \in \mathcal{L}_{\infty}(\mathbb{R})$$

ce qui signifie que si $|x(t)| \leq M_{x}$ alors il existe $M_{y}$ tel que $$|y(t)|=|T[x(t)]| \leq M_{y}.$$ Cette caractérisation est la plus
générale et s'applique quel soit le type de système, linéaire, non linéaire, \... On verra pour les systèmes linéaires que cette caractérisation peut s'affiner.

```{exercise} 

Pouvez-vous donner les caractéristiques des systèmes suivants et identifier l'opérateur $T[.]?$

1.  Système à décalage : $y(t)=x(t-t_0), t \in \mathbb{R}.$ À quelle
    condition le système est-il causal?

2.  Intégrateur :
    $y(t)=\int_{-\infty}^{t} x(\tau) d \tau, \quad t \in \mathbb{R}.$

3.  Moyenneur :
    $y(t)=\frac{1}{T} \int_{t-T / 2}^{t+T / 2} x(\tau) d \tau, \quad t \in \mathbb{R}.$

4.  Quadrateur : $y(t)=|x(t)|^2, \quad t \in \mathbb{R}.$


```