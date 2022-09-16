## Filtrage des signaux aléatoires

### Définition

```{prf:definition}

Le filtrage des signaux aléatoires stationnaires est défini par une opération de convolution

$$y(t)=x(t)*h(t)= \int_{\mathbb{R}} x(s) h(t-s) ds = \int_{\mathbb{R}} h(s) x(t-s) ds = h(t)*x(t).$$

où les intégrales sont définies au sens de la **convergence en moyenne quadratique
```

### Identification d'une opération de filtrage linéaire pour les signaux aléatoires 

Pour identifier une opération de filtrage linéaire, on peut utiliser le fait qu'il existe une **isométrie** entre l'ensemble des signaux aléatoires engendrés par un processus aléatoire stationnaire $x(t)$ (i.e., l'ensemble des combinaisons linéaires de la forme $\sum_{k=1}^N a_k x(t_k)$ et des limites des suites de variables aléatoires ayant cette forme notées $\lim\limits_{n \to +\infty}  \sum_{k_n=1}^{N_n} a_{k_n} x(t_{k_n})$) et l'ensemble des fonctions à valeurs complexes engendrées par $\exp(j2 \pi ft)$ (i.e., l'ensemble des combinaisons linéaires de la forme $\sum_{k=1}^N a_k \exp(2 \pi f t_k)$ et des limites des suites de
variables aléatoires ayant cette forme notées $\lim\limits_{n \to +\infty}  \sum_{k_n=1}^{N_n} a_{k_n} \exp(2 \pi f t_{k_n})$).
L'espace des signaux aléatoires engendré par $x(t)$ est muni du produit scalaire 

$$\langle u(t), v(t) \rangle_1 = E[u(t) v^*(t)]$$ 

tandis que l'espace des fonctions complexes engendré par $\exp(j2 \pi ft)$ est muni du produit scalaire 

$$\langle a(t), b(t) \rangle_2 = \int_{\mathbb{R}} a(t) b^*(t) s_x(f) df.$$

Le fait qu'il existe une isométrie entre ces deux espaces découle de l'égalité suivante

$$R_x(\tau) = E[ x(t) x^*(t-\tau)] =\langle x(t), x(t-\tau) \rangle_1$$

et du fait que

$$R_x(\tau) = \text{TF}^{-1}(s_x(f))=\int_{\mathbb {R}} s_x(f) \exp(j 2 \pi f \tau)df =\langle \exp(j 2 \pi f t), \exp(j 2 \pi f (t-\tau)) \rangle_2.$$

Pour plus de détails, on pourra se reporter à l'excellent livre de Yaglom {cite:p}`Yaglom`. On notera $x(t) \leftrightarrow \exp(j2 \pi ft)$ le fait que $x(t)$ admette $\exp(j2 \pi ft)$ comme correspondance par l'isométrie. On en déduit 

$$x(t)*h(t)=\int_{\mathbb{R}} h(s) x(t-s) ds \leftrightarrow \int_{\mathbb{R}} h(s) \exp[ j 2 \pi f(t-s) ] ds = \exp(j2 \pi ft)H(f)$$

qui caractérise l'opération de filtrage linéaire. On en déduit le résultat suivant

```{tip}
Pour vérifier qu'une opération $y(t)=T[x(t)]$ est une opération de filtrage linéaire, on remplace $x(t)$ par $\exp (j 2 \pi f t)$ dans l'expression de $y(t)$ et on factorise par $\exp (j 2 \pi f t)$. Si le terme devant $\exp (j 2 \pi f t)$ ne dépend que de $f$ (et pas de $t$ ), on le note $H(f)$ et on a une opération de filtrage linéaire avec un filtre de transmittance $H(f)$. Si le terme devant $\exp (j 2 \pi f t)$ dépend de $t$, on n'a pas une opération de filtrage linéaire.
```


Ce résultat peut également s'expliquer à l'aide de la notion de **réponse harmonique** : si on met un signal de fréquence $f_0$ à
l'entrée d'un filtre, i.e., $x(t)=\exp( 2 \pi f_0 t)$, la sortie du filtre est également une fréquence pure mais dont l'amplitude est la phase ont été modifiées par le filtre, i.e., $y(t)=H(f_0) \exp( 2 \pi f_0 t)$.

### Exemples

```{prf:example} Filtre dérivateur. 

Soit le système défini par $y(t)=x'(t)$ tel que 

$$x'(t)=\lim\limits_{h \to 0} \frac{x(t+h)-x(t)}{h} \leftrightarrow \lim\limits_{h \to 0} \frac{\exp(j2 \pi f(t+h))-\exp(j 2 \pi ft)}{h}=(j2\pi f) \exp(j2 \pi ft).$$

Comme $H(f)=j2\pi f$ est indépendant de $t$, $y(t)=x'(t)$ est la sortie d'un filtre linéaire de transmittance $H(f)=j2 \pi f$ (appelé filtre dérivateur.
```

```{prf:example} Filtre multi-trajets. 

On considère le système défini par l'équation d'observation suivante :

$$y(t)=\sum_{k=1}^K a_k x(t-t_k).$$

On a alors

$$y(t) \leftrightarrow \sum_{k=1}^K a_k \exp(j 2 \pi f(t-t_k)) = \exp( 2 \pi f t) \sum_{k=1}^K a_k \exp(j2 \pi f t_k)$$

Comme $H(f)=\sum_{k=1}^K a_k \exp(j2 \pi f t_k)$ est indépendant de $t$, on a une opération de de filtrage linéaire avec un filtre de
transmittance $H(f)$ (appelé filtre multi-trajets).
```

```{prf:example}

On considère maintenant le système suivant :

$$y(t)=x(t)m(t)$$ 

avec $m(t)$ indépendant de $x(t)$ tel que

$$x(t)m(t)  \leftrightarrow \exp(j2 \pi ft) m(t).$$

La correspondance de $x(t)m(t)$ ne peut pas s'écrire $\exp(j2 \pi ft)H(f)$ car $m(t)$ est une fonction de $t$ (et pas de $f$)
donc l'opération qui à $x(t)$ associe $x(t)m(t)$ n'est pas une opération de filtrage linéaire.
```

### Relations de Wiener-Lee 


Les relations de Wiener-Lee sont valables pour des signaux aléatoires stationnaires, comme le montre cette partie. On a alors les expressions suivantes :

-   <span style="color:rgba(var(--pst-color-link),1)"> **Intercorrélation :** </span> 
    
    $$\boxed{R_{yx}(\tau)=R_x(\tau) * h(\tau)}$$

    ```{prf}
    
    Pour démontrer cette relation, il suffit d'exprimer le produit scalaire à l'aide de l'isométrie 
    
    $$\begin{split}
    R_{yx}(\tau)&= E[ y(t) x^*(t-\tau)] \\
    &=  \l\langle y(t), x(t-\tau) \rangle_1  \\
    &=\langle \exp(j2 \pi ft)H(f), \exp(j2 \pi f(t - \tau) \rangle_2 \\
    &=\int_{\mathbb {R}} \exp(j2 \pi ft)H(f) \exp(-j2 \pi f(t - \tau) )s_x(f)df \\
    & =\int_{\mathbb {R}} H(f) \exp(j2 \pi f  \tau) s_x(f)df \\
    & =\text{TF}^{-1}[ H(f)  s_x(f) ]\\
    & =R_x(\tau) * h(\tau).
     \end{split}$$
    
    ```
    
    
-   <span style="color:rgba(var(--pst-color-link),1)"> **Autocorrélation :**</span> 

    $$\boxed{R_y(\tau) = R_x(\tau) * h(\tau) * h^*(-\tau)}$$

    ```{prf}
   
    On procède comme ci-dessus 
    
    $$\begin{split}
    R_{y}(\tau)&= E[ y(t) y^*(t-\tau)] \\
    &=  \l\langle y(t), y(t-\tau) \rangle_1  \\
    &=\langle \exp(j2 \pi ft)H(f), \exp(j2 \pi f(t - \tau)H(f) \rangle_2 \\
    &=\int_{\mathbb {R}} \exp(j2 \pi ft)H(f) \exp(-j2 \pi f(t - \tau)) H^*(f)s_x(f)df \\
    & =\int_{\mathbb {R}} H(f)H^*(f) \exp(j2 \pi f  \tau) s_x(f)df \\
    & =\text{TF}^{-1}[ |H(f)|^2  s_x(f) ]\\
    & =R_x(\tau) * h(\tau)* h^*(-\tau).
     \end{split}$$ 
         
    ```

-   <span style="color:rgba(var(--pst-color-link),1)"> **Densité spectrale de puissance :**</span> 

    $$\boxed{s_y(f)=s_x(f) |H(f)|^2}$$

    ```{prf}
     Comme $s_y(f)=\text{TF}[R_y(\tau)]$, le résultat découle de l'avant dernière ligne de l'équation précédente.
    ```

-   <span style="color:rgba(var(--pst-color-link),1)"> **Moyenne :**</span> 

    La moyenne de la sortie d'un filtre vérifie la relation suivante 
    
    $$\boxed{E[y(t)]=H(0) E[x(t)]}$$

    ```{prf}
    
    En effet 
    
    $$\begin{split}
    E[y(t)]&= E[ x(t)*h(t)] \\
    &=  E \left[ \int_{\mathbb{R}} h(s)x(t-s) ds \right]  \\
    &=\int_{\mathbb{R}} h(s) E[x(t-s)] ds \\
    &=E[x(t-s)] \int_{\mathbb{R}} h(s) ds  \\
    & =E[x(t)] H(0)
    \end{split}$$ 
    
    où on a utilisé l'égalité $E[x(t-s)]=E[x(t)]$ qui découle de la stationnarité du signal $x(t)$.
    ```

-   <span style="color:rgba(var(--pst-color-link),1)"> **Formule des interférences :**</span> 

    Cette formule exprime l'intercorrélation entre les sorties de deux filtres de transmittances $H_1(f)$ et $H_2(f)$ de même entrée
    $x(t)$. Ces deux sorties sont donc définies pas $y_1(t)=x(t)*h_1(t)$ et $y_2(t)=x(t)*h_2(t)$ et on a
    
    $$\boxed{E[y_1(t)y_2^*(t-\tau)]=\int_{\mathbb{R}} H_1(f) H_2^*(f) \exp(j 2 \pi f \tau)s_x(f) df.}$$

    ```{prf}
    
    La preuve est similaire à celle utilisée pour déterminer l'autocorrélation de la sortie d'un filtre 
    
    $$\begin{split}
    R_{y_1 y_2}(\tau)&= E[ y_1(t) y_2^*(t-\tau)] \\
    &=  \l\langle y_1(t), y_2(t-\tau) \rangle_1  \\
    &=\langle \exp(j2 \pi ft)H_1(f), \exp(j2 \pi f(t - \tau)H_2(f) \rangle_2 \\
    &=\int_{\mathbb {R}} \exp(j2 \pi ft)H_1(f) \exp(-j2 \pi f(t - \tau)) H_2^*(f)s_x(f)df \\
    & =\int_{\mathbb {R}} H_1(f)H_2^*(f) \exp(j2 \pi f  \tau) s_x(f)df.
     \end{split}$$ 
     
    Cette relation montre par exemple que si les deuxcanaux $H_1(f)$ et $H_2(f)$ ont de supports disjoints (ce qui implique $H_1(f)H_2(f)=0$, on a $E[ y_1(t) y_2^*(t-\tau)]=0$, ce qui signifie que les signaux $y_1(t)$ et $y_2(t-\tau)$ sont décorrélés,
    ce qui n'est pas très intuitif car l'entrée des deux filtres est la même !! 
    ```