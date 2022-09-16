## Filtrage adapté

### Définition

L'objectif du filtre adapté (matched filter en Anglais) est de **débruiter un signal déterministe connu noyé dans un bruit additif**. On suppose donc qu'on observe le signal $x(t)$ défini par

$$
x(t)=s(t)+n(t),\qquad t\in \left[ 0,T\right] 
$$

où $s(t)$ est un signal déterministe à énergie finie connu et $n(t)$ est un signal aléatoire stationnaire de moyenne nulle et de densité spectrale de puissance $s_n(f)$. On cherche à débruiter le signal $x(t)$ à l'aide d'un filtre de réponse impulsionnelle $h(t)$ et de transmittance $H(f)$. La sortie de ce filtre est définie par

$$
y(t) =y_{s}(t)+y_{n}(t) =s(t)\ast h(t)+n(t)\ast h(t).
$$

**Le filtre adapté (au signal $s(t)$ connu) est obtenu en maximisant le rapport signal sur bruit**

$$
\text{SNR}(t_{0})=\frac{y_{s}^{2}(t_{0})}{E\left[ y_{n}^{2}(t_{0})\right] } 
$$

qui est le rapport des puissances du signal $y_s$ et du signal $y_n$ à l'instant de décision $t_0$ (le choix de $t_0$ sera discuté plus tard).

### Expression du filtre

Des calculs élémentaires permettent d'obtenir l'expression suivante du rapport signal sur bruit

$$
\text{SNR}(t_{0})=\frac{y_{s}^{2}(t_{0})}{E\left[ y_{n}^{2}(t_{0})\right] }=\frac{%
\left| \int_{\Bbb{R}}H(f)S(f)e^{j2\pi ft_{0}}df\right| ^{2}}{\int_{\Bbb{R}%
}\left| H(f)\right| ^{2}s_{n}(f)df} 
$$

En effet

- ***Numérateur***

$$
y_{s}(t)=\text{TF}^{-1}\left[ S(f)H(f)\right] =\int_{\Bbb{R}}H(f)S(f)e^{j2\pi ft}df
$$

- ***Dénominateur***

$$
P_{y_{n}} =E\left[ y_{n}^{2}(t_{0})\right] =R_{y_{n}}\left( 0\right)  
=\int_{\Bbb{R}}s_{n}(f)\left| H(f)\right| ^{2}df
$$

En introduisant les notations $a(f)=\sqrt{s_{n}(f)}H(f)$ et $b(f)=\frac{S^{\ast }(f)}{\sqrt{s_{n}(f)}}e^{-j2\pi ft_{0}}$, on obtient

$$
\text{SNR}(t_{0})=\frac{\left| \int_{\Bbb{R}}a(f)b^{\ast }(f)df\right| ^{2}}{\int_{\Bbb{R}
}a(f)a^{\ast }(f)df}
$$

et donc en utilisant l'inégalité de Cauchy-Schwartz, on obtient

$$
\text{SNR}(t_{0}) \le \int_{\Bbb{R}}b(f)b^{\ast }(f)df
$$

avec égalité lorsque

$$
a(f)= k b(f) \Leftrightarrow H(f)=k\dfrac{S^{\ast }(f)}{s_{n}(f)}e^{-j2\pi ft_{0}}.
$$

Dans le cas particulier d'un \textcolor{red}{bruit blanc}, on obtient

$$
H(f)=KS^{\ast }(f)e^{-j2\pi ft_{0}}  \Leftrightarrow  \boxed{ h(t)=Ks^{\ast }\left( t_{0}-t\right)}
$$

ce qui correspond à une **symétrie par rapport à l'axe oy de $s(t)$ suivi d'une translation de $t_0$**. 

### SNR maximum

Le rapport signal sur bruit maximum est défini par

$$
\text{SNR}(t_{0})^{\max } =\int_{\Bbb{R}}b(f)b^{\ast }(f)df =\int_{\Bbb{R}}\frac{2}{N_{0}}\left| S(f)\right| ^{2}df=\frac{2E}{N_{0}}
$$

où $E$ est l'énergie du signal. On voit donc que le le rapport signal à bruit maximal ne dépend pas de la forme du signal mais
uniquement de son **énergie**.


### Applications

Le filtre adapté est utilisé dans tout récepteur d'un système de communication numérique. Dans cette application, on connait les signaux $s_0(t)$ et $s_1(t)$ qui sont utilisés pour la mise en forme des bits '0' et '1'. Lorsqu'on a $s_1(t)=-s_0(t)$ (ce qui est le cas par exemple pour la mise en forme du signal biphase), le filtre adapté à $s_0(t)$ est aussi adapté à $s_1(t)$. Cette application est illustrée sur la figure ci-dessous issue de la page wikipedia sur le filtre adapté (matched filter en Anglais)

```{image} matched_filter.png
:alt: matched_filter
:class: bg-primary mb-1
:align: center
```

### Référence

Pour plus de détails concernant le filtre adapté, le lecteur pourra consulter le livre de Picinbono {cite:p}`Picinbono1993`.
