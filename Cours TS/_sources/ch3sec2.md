## Filtrage des signaux déterministes

Parmi les systèmes à temps continu d'intérêt, on s'intéressera surtout aux systèmes à la fois linéaires et invariants par décalage. Ils
définiront une classe de systèmes dénommés *filtres linéaires invariants par décalage (FLID)*. On supposera dans cette section que les signaux en
entrée sont des signaux déterministes.

### Réponse impulsionnelle, convolution et notion de filtre

Par définition, la réponse impulsionnelle d'un système notée $h$ est la fonction obtenue en sortie d'un système $T$ quand on applique une
impulsion de Dirac à l'entrée. Formellement, on a donc la caractérisation suivante

$$h=T[\delta]$$ 

soit

$$h(t)=T[\delta(t)], \quad \forall t \in \mathbb{R}.$$ 

À nouveau, on a une définition large qui s'applique à tout système, même si ce dernier
n'est pas linéaire invariant par décalage. Cependant, pour le cas linéaire invariant par décalage, on va voir que le système peut être
entièrement défini à l'aide de sa réponse impulsionnelle, ce qui en fait un objet incontournable en traitement du signal.

En effet, si on suppose que pour $t$ où $x(t)$ est continue, on peut
écrire

$$x(t)=\int_{-\infty}^{\infty} x(\tau) \delta(t-\tau) d \tau,$$ 

en appliquant l'opérateur linéaire invariant par décalage $T$ à $x=\delta,$ on obtient alors 

$$\begin{aligned}
y(t) &=T[x(t)]=T\left[\int_{-\infty}^{\infty} x(\tau) \delta(t-\tau) d \tau \right] \\
& \stackrel{(1)}{=} \int_{-\infty}^{\infty} x(\tau) T[\delta(t-\tau)] d \tau \\
& \stackrel{(2)}{=} \int_{-\infty}^{\infty} x(\tau) h(t-\tau) d \tau=h(t) * x (t)
\end{aligned}$$ 

où $(1)$ est l'application simple de la linéarité de l'opérateur et $(2)$ utilise l'invariance par décalage et
l'identification à la réponse impulsionnelle. On remarque également que la linéarité seule ne suffit pas et que l'hypothèse d'invariance par
décalage joue un rôle important.

La réponse impulsionnelle $h$ d'un système linéaire invariant par décalage est appelée réponse impulsionnelle d'un ***filtre*** ou tout
simplement ***filtre***. Comme $h$ caractérise complètement le comportement de la sortie $y$ en fonction de l'entrée $x,$ on ne fait
(la plupart du temps) référence à un système linéaire invariant par décalage caractérisé par l'opérateur $T$ qu'au travers de sa réponse
impulsionnelle, et donc l'opérateur $T$ est souvent assimilé à $h$, qui est appelé filtre linéaire invariant par décalage (FLID). La notion de
filtre fait référence au fait que la sortie est une version \"moyennée\" de l'entrée par la réponse impulsionnelle *retournée*. L'opération de
convolution qui lie l'entrée et la sortie du système est appelée ***filtrage***.

### Condition nécessaire et suffisante de stabilité des FLID

Un FLID est stable si et seulement si

$$\int_{\mathbb{R}}|h(t)| d t<\infty, \text { i.e. }, h \in \mathcal{L}_{1}(\mathbb{R}).$$

La condition est **suffisante** : si l'entrée est dans $\mathcal{L}_{p}(\mathbb{R}),$ alors la sortie d'un système stable est
dans $\mathcal{L}_{p}(\mathbb{R})$ (car le module d'une intégrale est inférieur à l'intégrale du module). 

La condition est également **nécessaire** même si la preuve est un peu plus technique.

### Caractérisation d'un filtre 

Dans le cas de signaux déterministes, on vérifie qu'une opération définit un filtre linéaire en utilisant la propriété suivante

$$y(t)=x(t)*h(t) \Leftrightarrow Y(f) = X(f) H(f)$$ 

où $X(f) = \text{TF} [x(t)]$ et $H(f) = \text{TF} [h(t)]$. 

La transformée de Fourier $H(f)$ s'appelle **transmittance** ou **fonction de transfert** ou encore réponse **réponse fréquentiellle**. $H(f)$ peut
également se réécrire en fonction de son module et argument 

$$H(f)=|H(f)| e^{j \arg (H(f))}$$ 

où $|H(f)|$ et $\arg (H(f))$ sont respectivement **la réponse en amplitude** et **la réponse en phase** du filtre. L'analyse des systèmes FLID dans le domaine de Fourier permet de mettre en évidence une propriété importante de ces systèmes qui est héritée des propriétés de l'opérateur de convolution sous-jacent à l'action d'un FLID. Considérons les fonctions complexes exponentielles définies par [^1]

$$\phi(t)=e^{j 2 \pi f t}, t \in \mathbb{R}, \text{ pour n'importe quelle fréquence } f \in \mathbb{R}.$$

Pour un FLID $h \in \mathcal{L}_1(\mathbb{R}),$ on aura

$$\begin{aligned}
y(t) &=h(t)*\phi(t) \\
& = \int_{-\infty}^{\infty} e^{j 2\pi f (t-\tau)} h(\tau) d \tau \\
& =\left[ \int_{-\infty}^{\infty} h(\tau) e^{-j 2 \pi f \tau} d \tau \right] e^{j 2 \pi f t}\\
&= H(f) \phi(t).
\end{aligned}$$ 


On en déduit que les fonctions exponentielles complexes (de module unité) sont des fonctions propres des FLIDs de valeur propre
associée $H(f)$ (appelé également gain complexe ou réponse harmonique).

Pour identifier simplement la réponse impulsionnelle d'un filtre, on peut donc réaliser soit

-   un calcul direct dans le domaine temporel en évaluant explicitement $y(t)=h(t)$ pour $x(t)=\delta(t)$,

-   un calcul direct de la transmittance en identifiant $H(f)$ pour $x(t)=\phi(t),$

-   une identification directe des termes du produit de convolution pour une entrée $x(t)$ arbitraire.

On remarquera enfin que toute opération linéaire n'est pas un filtre (considérer par exemple $y(t)=m(t)x(t)$ ou $y(t)=x(0)$). 

#### Résumé

Par la suite, le filtrage d'un signal déterministe $x(t)$ par un filtre de réponse impulsionnelle $h(t)$, défini par une opération de
convolution qui produit un signal $y(t)$ sera noté 

$$y(t)=x(t)*h(t)= \int_{\mathbb{R}} x(\tau) h(t-\tau) ds = \int_{\mathbb{R}} h(\tau) x(t-\tau) ds = h(t)*x(t).$$

Souvent, pour que le filtre soit réalisable physiquement, il faut que la réponse impulsionnelle soit **réelle** (pour éviter qu'une entrée réelle
puisse fournir une sortie à valeur complexe), **causale** (i.e., $h(t)=0$ si $t<0$ pour que la sortie du filtre à l'instant $t$ ne dépende que des entrées aux instants inférieurs à $t$), dans $L^1$ (i.e., telle que $\int_{\mathbb{R}} |h(u)|du < + \infty$ pour que le filtre soit **stable**, c'est-à-dire que la sortie soit bornée pour toute entrée bornée).

### Relations entrée-sortie de Wiener-Lee

Pour les signaux déterministe (ie. à énergie finie, à puissance finie et périodiques), on peut caractériser analytiquement la fonction
d'autocorrélation et la densité spectrale de la sortie du système en fonction des caractéristiques de l'entrée. Ainsi, les relations entre
les fonctions d'autocorrélation et densités spectrales de $x(t)$ et de $y(t)$ appelées relations de Wiener-Lee sont données ci-après

-   **Densité spectrale de puissance :**

    $$s_y(f)=s_x(f) |H(f)|^2$$

-   **Intercorrélation :**
 
    $$R_{yx}(\tau)=R_x(\tau) * h(\tau)$$

-   **Autocorrélation :**
    
    $$R_y(\tau) =  h(\tau) * h^*(-\tau)* R_x(\tau)$$ 
    
    Cette dernière expression peut se réécrire 
    
    $$R_y(\tau) =  R_h(\tau)* R_x(\tau)$$ 
    
    où $R_h(\tau)=h(\tau) * h^*(-\tau)$ peut être interprétée comme une autocorrélation déterministe associée au filtre $h.$ 
    Cette autocorrélation peut être donc vue comme le produit de convolution de $h$ avec le filtre adapté à $h(t)$ donnée par $h^*(-t)$ (voir notion de filtre adapté dans la suite).

```{prf:proof} ***Preuve détaillée pour des signaux à énergie finie***

Le signal d'entrée étant dans $\mathcal{L}_2(\mathbb{R}),$ le signal de sortie le sera également et donc on a bien un signal de sortie à énergie finie. Pour la densité spectrale d'énergie, la preuve est triviale par application directe de la définition de la densité spectrale des signaux
à énergie finie et écriture de l'opération de filtrage dans le domaine fréquentiel. 

$$s_{y}(f)=|Y(f)|^{2}=|H(f)X(f)|^{2}=|H(f)|^{2}s_{x}(f).$$

Pour l'intercorrélation, un calcul direct en passant par le domaine fréquentiel et en utilisant l'égalité de Parseval nous donne

$$\begin{aligned}
R_{y x}(\tau) &=\int_{\mathbb{R}} y(u) x^{*}(u-\tau) d u \\
&=\int_{\mathbb{R}} Y(f)\left[e^{-j 2 \pi f \tau} X(f)\right]^{*} d f \\
&=\int_{\mathbb{R}} X(f) H(f)\left[e^{j 2 \pi f \tau} X^{*}(f)\right] d f \\
&=\int_{\mathbb{R}} s_{x}(f) H(f) e^{j 2 \pi f \tau} d f\\
&= \textrm{TF}^{-1}\left[s_{x}(f) H(f)\right]\\
&= h(\tau) * R_{x}(\tau) 
\end{aligned}$$ 

Une preuve alternative est la suivante :

$$R_{y x}(\tau)=y(\tau)* x^*(-\tau)=h(\tau)* (x(\tau)*x^*(-\tau))=h(\tau) * R_{x}(\tau).$$ 
```

Cette preuve alternative peut également être utilisée pour la fonction d'autocorrélation de la sortie du filtre : 

$$\begin{aligned}
R_{y}(\tau) &=\int_{\mathbb{R}} y(u) y^{*}(u-\tau) d u \\
&= y(\tau) * y^*(-\tau) \\
&=h(\tau) * x(\tau) * h^*(-\tau) * x^*(-\tau)\\
&=h(\tau) * h^*(-\tau)* x(\tau) * x^*(-\tau)\\
&=h(\tau) * h^*(-\tau)*R_{x}(\tau).
\end{aligned}$$

```{prf:proof} ***Preuve partielle pour des signaux à puissance finie périodiques***

On considère ici des signaux de $\mathcal{L}_{2}\left(\left[-\frac{T_0}{2}, \frac{T_0}{2} \right)\right).$
Par calcul direct dans le domaine temporel, on a l'intercorrélation comme suit 

$$\begin{aligned}
R_{y x}(\tau) &=\frac{1}{T_{0}} \int_{-T_{0} / 2}^{T_{0} / 2} y(t) x^{*}(t-\tau) d t \\
&=\frac{1}{T_{0}} \int_{-T_{0} / 2}^{T_{0} / 2}\left[\int_{\mathbb{R}} h(v) x(t-v) d v\right] x^{*}(t-\tau) d t \\
&=\int_{\mathbb{R}} h(v)\left[\frac{1}{T_{0}} \int_{-T_{0} / 2}^{T_{0} / 2} x(t-v) x^{*}(t-\tau) d t\right] d v \\
&=\int_{\mathbb{R}} h(v) R_{x}(\tau-v) dv.
\end{aligned}$$ 

Les autres quantités se déduisent de la même manière. Pour les signaux à puissance finie non périodiques les preuves sont similaires en changeant de produit scalaire. 

```

### Formules des interférences et intercorrélation entrée-sortie 

On considère deux signaux $y_1$ et $y_2$ obtenus par filtrage linéaire d'un même signal d'entrée $x(t)$ :

$$y_{1}(t)=x(t) * h_{1}(t) \text { et } y_{2}(t)=x(t) * h_{2}(t)$$ 

alors

$$\begin{aligned}
R_{y_{1} y_{2}}(\tau)&=\int_{\mathbb{R}} s_{x}(f) H_{1}(f) H_{2}^{*}(f) e^{j 2 \pi f \tau} d f \\
&=h_1(\tau)*h_2^*(-\tau)*R_x(\tau).
\end{aligned}$$

```{prf:proof} ***Preuve pour les signaux à énergie finie :***

$$\begin{aligned}
R_{y_{1} y_{2}}(\tau) &=\int y_{1}(t) y_{2}^{*}(t-\tau) d t=\int_{\mathbb{R}} Y_{1}(f)\left[Y_{2}(f) e^{-j 2 \pi f \tau}\right]^{*} d f \\
&=\int_{\mathbb{R}} H_{1}(f) H_{2}^{*}(f) e^{j 2 \pi f \tau} s_{x}(f) d f 
\end{aligned}$$ 

Dans le domaine de Fourier, on obtient une quantité appelée **inter-spectre** définie par

$$s_{y_1y_2}(f)=H_1(f) H_{2}^{*}(f) s_x(f).$$
```

```{note}
L'application de cette formule au cas où $y_1(t)=h(t)*x(t),$ $y_2(t)=x(t),$ i.e., avec $h_2(t)=\delta(t),$ nous redonne l'intercorrélation entrée-sortie donnée par 

$$\begin{aligned}
R_{yx}(\tau)&= h(\tau)* R_x(\tau).
\end{aligned}$$
```

```{prf:remark}
La quantité $f$ est appelée fréquence, mesurée en Hertz (Hz), et souvent utilisée par les francophones, alors que la quantité $\omega=2 \pi f$ est la pulsation en radiant par seconde (rad/s) qui correspond plus à la notation internationale. En particulier, pour des logiciels comme Matlab, c'est souvent la pulsation qui est utilisée pour la représentation fréquentielle des signaux.
```

