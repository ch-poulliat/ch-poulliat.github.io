## Signaux déterministes non périodiques à puissance finie 

La dernière classe de signaux déterministes est la classe des signaux déterministes non périodiques à puissance finie.

```{prf:definition} Signaux déterministes non prériodiques à puissance finie.

Un signal est dît déterministe non périodique à puissance finie si il vérifie

$$P=\lim\limits_{T \to +\infty} \frac{1}{T} \int_{- \frac{T}{2}}^{ \frac{T}{2}} |x(t)|^2dt < \infty.$$

```

On remarquera que si $x(t)$ est a énergie finie, alors sa puissance est nulle. Ces signaux admettent le produit scalaire

$$\langle u(t), v(t) \rangle =  \lim\limits_{T \to +\infty} \frac{1}{T} \int_{- \frac{T}{2}}^{ \frac{T}{2}}  u(t) v^*(t) dt.$$

En se basant sur le produit scalaire précédent, on obtient les définitions suivantes

```{prf:definition} 

-   ***Fonction d'autocorrélation :***

    $$R_x(\tau)=\langle x(t), x(t-\tau) \rangle = \lim\limits_{T \to +\infty} \frac{1}{T} \int_{- \frac{T}{2}}^{ \frac{T}{2}}  x(t)x^*(t-\tau) dt,$$

-   ***Fonction d'intercorrélation :***
    
    $$R_{xy}(\tau) = \langle x(t), y(t-\tau) \rangle = \lim\limits_{T \to +\infty} \frac{1}{T} \int_{- \frac{T}{2}}^{ \frac{T}{2}}  x(t) y^*(t-\tau) dt$$

-   ***Densité spectrale de puissance :***

    $$s_x(f) = \textrm{TF}[R_x(\tau)] = \int_{\mathbb{R}} R_x(\tau) \exp \left(-j 2 \pi f \tau \right) d\tau.$$
```

On peut alors montrer la relation suivante

$$s_x(f)= {\underset{T \rightarrow \infty }{\lim }} \frac{1}{T} \left|X_T(f) \right|^2$$ 

avec

$$X_T(f)= \int_{-T/2}^{T/2} x(t) \exp(-j 2 \pi f t)dt$$ 

qui montre que la densité spectrale de puissance d'un signal déterministe non périodique à puissance finie est toujours positive et est homogène au
module carré d'une transformée de Fourier.

```{prf:example} 

Un exemple classique de signal déterministe non périodique à puissance finie est le signal constant

$$x(t)=A, \forall t \in \mathbb{R}$$ 

avec $A  \in \mathbb{R}$. Ce signal est de puissance $P=A^2$ de fonction d'autocorrélation 

$$R_x(\tau)=A^2$$ 

et de densité spectrale de puissance

$$s_x(f)=A^2 \delta(f).$$
```