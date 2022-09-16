## Signaux déterministes à énergie finie

```{prf:definition} Signaux à energie finie
:label: sigEfinie

On dit qu'un signal à temps continu $x(t)$ est à énergie finie si

$$E=\int_{- \infty}^{+ \infty} |x(t)|^2dt < \infty.$$

```

Pour un signal à énergie finie $x(t)$, on peut définir sa fonction
d'autocorrélation $R_x(\tau)$ et sa densité spectrale d'énergie comme
suit

```{prf:definition} Fonction d'autocorrélation

$$R_x(\tau)= \int_{\mathbb{R}} x(t)x^*(t-\tau) dt$$
```

et

```{prf:definition} Densité spectrale d'énergie

$$s_x(f) = \textrm{TF}[R_x(\tau)] = \int_{\mathbb{R}} R_x(\tau) \exp \left(-j 2 \pi f \tau \right) d\tau$$

```

où $x^*(t)$ désigne le complexe conjugué du signal $x(t)$. On notera que $R_x(\tau)$ est le produit scalaire entre les deux signaux $x(t)$ et
$x(t-\tau)$, i.e., $R_x(\tau) = \langle x(t), x(t-\tau) \rangle$ si on définit

$$\langle u(t), v(t) \rangle =  \int_{\mathbb{R}}  u(t) v^*(t) dt$$ 

qui est le produit scalaire des signaux à énergie finie.

La fonction d'intercorrélation entre deux signaux à énergie finie $x(t)$ et $y(t)$ est alors définie par le produit scalaire entre $x(t)$ et
$y(t-\tau)$, i.e.,

```{prf:definition} Fonction d'intercorrélation

$$R_{xy}(\tau) = \langle x(t), y(t-\tau) \rangle = \int_{\mathbb{R}} x(t) y^*(t-\tau) dt$$
```

On remarquera que $E=R_x(0)=\langle x(t), x(t) \rangle$.

La densité spectrale d'énergie $s_x(f)$ est liée à la transformée de Fourier du signal $x(t)$ notée $X(f)$ par une relation simple

```{prf:property}
$$ 
s_x(f)= \left| X(f) \right|^2
$$
```

En effet 

$$\begin{aligned}
s_x(f)=& \int_{\mathbb{R}} \left[ \int_{\mathbb{R}} x(t) x^*(t-\tau)
dt \right] \exp(- j  2 \pi f \tau) d\tau\\
& =\int_{\mathbb{R}} \left[ \int_{\mathbb{R}}  x^*(t-\tau) \exp(- j
2 \pi f \tau) d \tau \right] x(t)  dt \\
& =\int_{\mathbb{R}}  \left[ \int_{\mathbb{R}}  x^*(u) \exp \left[j
2 \pi
f (u-t)\right] du \right] x(t)  dt \\
& = X^*(f) X(f) =  \left| X(f) \right|^2
\end{aligned}$$ 

qui montre qu'une densité spectrale est toujours positive et qu'elle est homogène au module carré d'une transformée de Fourier. Tous les signaux déterministes à amplitude bornée dont le support est un intervalle ou une réunion d'intervalles sont à énergie finie. Un exemple classique est la fenêtre rectangulaire de largeur $T$ notée $\Pi_T(t)$ définie par 

$$x(t)= \Pi_T(t)= \left\{
\begin{array}{l}
1 \; \text{ si } \; -\frac{T}{2}<t<\frac{T}{2}\\
0 \; \text{ sinon }
\end{array}
\right.$$ 

qui admet la fonction d'autocorrélation

$$R_x(\tau)=T \Lambda_T(\tau) = \left\{
\begin{array}{l}
T \; \text{ si } \; -T<t<T\\
0 \; \text{ sinon }
\end{array}
\right.$$ 

et la densité spectrale d'énergie

$$s_x(f)=T^2 \textrm{sinc}^2 (\pi T f) = |X(f)|^2.$$