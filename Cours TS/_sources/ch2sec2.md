## Signaux déterministes périodiques à puissance finie

```{prf:definition} Signaux déterministes périodiques à puissance finie. 

On dit qu'un signal à temps continu $x(t)$ est à puissance finie péridodique de période $T_0$ si $x(t+T_0)=x(t), \forall t$
(périodicité de période $T_0$) et si 

$$P=\frac{1}{T_0} \int_{- \frac{T_0}{2}}^{ \frac{T_0}{2}} |x(t)|^2dt < \infty$$
```

Par ailleurs, si $x(t)$ est à puissance finie périodique, alors son énergie est infinie. On peut définir un produit scalaire pour les
signaux périodiques à puissance finie comme suit

$$\langle u(t), v(t) \rangle =  \frac{1}{T_0} \int_{- \frac{T_0}{2}}^{ \frac{T_0}{2}} u(t) v^*(t) dt.$$

Il est donc assez naturel de définir les fonctions d'autocorrélation et d'intercorrélation et la densité
spectrale de puissance d'un signal périodique à puissance finie comme suit :

```{prf:definition}

-   ***Fonction d'autocorrélation :***

    $$R_x(\tau)=\langle x(t), x(t-\tau) \rangle =  \frac{1}{T_0} \int_{- \frac{T_0}{2}}^{ \frac{T_0}{2}} x(t)x^*(t-\tau) dt$$

-   ***Fonction d'intercorrélation :***

   $$R_{xy}(\tau) = \langle x(t), y(t-\tau) \rangle =  \frac{1}{T_0} \int_{- \frac{T_0}{2}}^{ \frac{T_0}{2}}  x(t) y^*(t-\tau) dt$$

-   ***Densité spectrale de puissance :***

    $$s_x(f) = \textrm{TF}[R_x(\tau)] = \int_{\mathbb{R}} R_x(\tau) \exp \left(-j 2 \pi f \tau \right) d\tau.$$
    
```

La densité spectrale de puissance d'un signal déterministe périodique à puissance finie de période $T_0$ est liée à sa décomposition en série de
Fourier par la relation simple 

$$
s_x(f)= \sum_{k \in \mathbb{Z}} |c_k|^2 \delta(f-kf_0)
$$ 

où les coefficients $c_k$ apparaissent dans la décomposition en série de Fourier de $x(t)$ donnée par

$$x(t)=\sum_{k \in \mathbb{Z}} c_k \exp(j 2 \pi k f_0 t).$$ 

La relation précédente relation montre que la densité spectrale de puissance d'un signal déterministe périodique à
puissance finie est un spectre de raies avec des amplitudes positives qui sont les modules carrés des coefficients $c_k$. 
Elle se démontre comme suit 

$$\begin{aligned} R_x(\tau)=&  \sum_{k,l} c_k c_l^*   \exp \left(j 2 \pi l f_0 \tau  \right) \left[\frac{1}{T_0} \int_{-T_0/2}^{T_0/2} \exp \left[j 2 \pi (k - l) f_0 t \right]dt \right] \\
& =\sum_k |c_k|^2 \exp(j 2 \pi k f_0 \tau)
\end{aligned}$$ 

et donc

$$s_x(f)= \text{TF}[R_x(\tau)] = \sum_k |c_k|^2 \ \text{TF} \left[ \exp(j 2 \pi k f_0 \tau) \right]=\sum_{k \in \mathbb{Z}} |c_k|^2 \delta(f-kf_0).$$

```{prf:example}  

Un exemple classique appelé parfois le **secteur** est le signal défini par 

$$x(t)= A \cos(2 \pi f_0 t)$$ 

avec $A=220 \sqrt{2}$ et $f_0=50$ Hz qui est un signal périodique de période $T_0=\frac{1}{f_0}$. Ce signal admet comme fonction d'autocorrélation 

$$R_x(\tau)=\frac{A^2}{2} \cos(2 \pi f_0 \tau)$$ 

qui est une fonction périodique de même période que $x(t)$ et qui admet la densité spectrale de puissance

$$s_x(f)=\frac{A^2}{4} \left[ \delta(f-f_0) + \delta(f+f_0)\right].$$
 ```
 
 