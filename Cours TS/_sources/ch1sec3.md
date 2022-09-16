## Transformée de Fourier 

On rappelle ici les principales propriétés associées à la représentation fréquentielle des
signaux. Voir cours Fourier et Intégration pour plus de détails quant aux dérivations et démonstrations. 

### Définitions

On considère des fonctions appartenant à $\mathcal{L}_2(\mathbb{R})$ ou $\mathcal{L}_1(\mathbb{R})$.

```{prf:definition} Transformée de Fourier
:label: tfdef
La transformée de Fourier de $x(t)$ est donnée par

$$X(f)=\mathrm{TF}[x(t)]=\int_{\mathbb{R}} x(t) \exp (-j 2 \pi f t) dt$$

```

```{prf:definition} Transformée de Fourier inverse
:label: invtfdef

La transformée inverse est elle donnée par

$$x(t)=\mathrm{TF}^{-1}[X(f)] =\int_{\mathbb{R}} X(f) \exp (+j 2 \pi f t) df$$
```

### Propriétés 
Les principales propriétés sont


-   <span style="color:rgba(var(--pst-color-link),1)">***Linéarité :***</span>

    $$\operatorname{TF}[a x(t)+b y(t)]=a X(f)+b Y(f)$$

-   <span style="color:rgba(var(--pst-color-link),1)">***Parité :***</span>

    $$
        x(t) \text{ réelle paire} \Rightarrow X(f) \text{ réelle paire}
    $$

-   <span style="color:rgba(var(--pst-color-link),1)">***Translation et Modulation :***</span>

    $$\begin{array}{l}
    \text { TF }\left[x\left(t-t_{0}\right)\right]=\exp \left(-j 2 \pi f t_{0}\right) X(f) \\
    \text { TF }\left[x(t) \exp \left(j 2 \pi f_{0} t\right)\right]=X\left(f-f_{0}\right)
    \end{array}$$
    
    Ces propriétés sont beaucoup utilisées en télécommunications.

-   <span style="color:rgba(var(--pst-color-link),1)">***Similitude :***</span>

    $$\operatorname{TF}[x(a t)]=\frac{1}{|a|} X\left(\frac{f}{a}\right)$$

-  <span style="color:rgba(var(--pst-color-link),1)">***Produit de convolution :***</span>
    
    $$\begin{array}{l}
    \operatorname{TF}[x(t) * y(t)]=X(f) Y(f) \\
    \operatorname{TF}[x(t) y(t)]=X(f) * Y(f)
    \end{array}$$

-   <span style="color:rgba(var(--pst-color-link),1)">***Egalité de Parseval :***</span>

    $$\int_{\mathbb{R}} x(t) y^{*}(t) d t=\int_{\mathbb{R}} X(f) Y^{*}(f) d f$$

    En particulier, pour les signaux pour lesquels cela a du sens, on a la relation suivante de conservation de l'énergie entre les domaines temporel et fréquentiel souvent utilisée pour les calculs.
    
    $$\int_{\mathbb{R}} |x(t)|^2 d t=\int_{\mathbb{R}} |X(f)|^2 d f$$

-   <span style="color:rgba(var(--pst-color-link),1)"> ***Conjugaison :***</span>
    
    $$\operatorname{TF}\left[x^{*}(t)\right]=X^{*}(-f)$$