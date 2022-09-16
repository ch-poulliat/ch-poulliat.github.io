## Cas des signaux aléatoires
L'objectif de cette partie est d'expliquer comment on peut déterminer la fonction d'autocorrélation et la densité spectrale de puissance d'un signal défini par une transformée non-linéaire sans mémoire $g$ d'un signal aléatoire stationnaire $x(t)$. Comme nous allons le voir, l'outil fondamental pour cette détermination est le théorème de Price qui est résumé ci-dessous (dans sa version la plus simple).

### Théorème de Price

```{prf:theorem} Théorème de Price.

Pour tout vecteur Gaussien centré $(X_1,X_2)$, on a pour toute fonction non-linéaire $g$

$$
\frac{\partial E(Y_1 Y_2) }{\partial E(X_1 X_2)} = E \left(
\frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2}
\right)
$$

avec $Y_1=g(X_1)$ et $Y_2=g(X_2)$ (pour la preuve, on pourra par exemple consulter {cite:p}`Solaiman`. 

En considérant $X_1=x(t)$, $X_2=x(t-\tau)$, on a $Y_1=y(t)=g[x(t)]$, $Y_2=y(t-\tau)=g[x(t-\tau)]$ et donc

$$
\frac{\partial R_y(\tau) }{\partial R_x(\tau)} = E \left[
\frac{\partial y(t)}{\partial x(t)} \frac{\partial y(t-\tau)}{\partial x(t-\tau)} \right].
$$
```

On remarquera que la relation ci-dessus utilise implicitement le fait que $y(t)=g[x(t)]$ est un signal aléatoire stationnaire, ce qui découle du fait que $\boldsymbol{x}  = (x(t),x(t-\tau))^T$ est un vecteur Gaussien centré de matrice de covariance notée $\Sigma$. En effet

\begin{equation}
E\left[ Y(t) Y(t-\tau) \right] = \int \int g\left( x_1 \right)
g\left( x_2 \right) p\left( x_1, x_2 \right) d x_1 dx_2 \label{stat}
\end{equation}

avec $x_1=X(t)$, $x_2=X(t-\tau)$ et

$$
p(x_1,x_2) = \frac{1}{2 \pi \sqrt{|\Sigma|}} \exp \left(
-\frac{1}{2} \boldsymbol{x}^T  \Sigma^{-1} \boldsymbol{x}  \right)
$$

avec

$$
\Sigma = 
\begin{pmatrix}
R_X(0) & R_X(\tau) \\
R_X(\tau) & R_X(0)
\end{pmatrix}

$$

En injectant $p(x_1,x_2)$ et $\Sigma$ dans \eqref{stat}, on en déduit que $E\left[ Y(t) Y(t-\tau) \right]$ dépend uniquement de $R_x(\tau)$ et de $R_x(0)$ et ne dépend donc pas de $t$. De même

$$
E\left[ Y(t) \right] =  \int g\left( x_1 \right)
 p\left( x_1, . \right) d x_1
$$

où $p(x_1,.)$ est la densité de $x_1=x(t)$ définie par

$$
p(x_1,.)= \frac{1}{\sqrt{ 2 \pi \sigma_1^2}} \exp \left(
-\frac{x_1^2}{2 \sigma_1^2} \right).
$$

Comme $\sigma_1^2=\text{var}[x(t)]=R_x(0)$, on en déduit que $E\left[ Y(t) \right]$ ne dépend que de $R_x(0)$ et donc ne dépend pas de $t$.

### Exemple d'application : le quadrateur

Dans le cas où $y(t)=x^2(t)$, l'application du théorème de Price permet d'obtenir

$$
\frac{\partial R_y(\tau) }{\partial R_x(\tau)} = E \left[
\frac{\partial y(t)}{\partial x(t)} \frac{\partial y(t-\tau)}{\partial x(t-\tau)} \right]= 4E[x(t)x(t-\tau)]=4R_x(\tau).
$$

Cette équation s'intègre et conduit à

$$
 R_y(\tau)=2 R^2_x(\tau) + K
$$

où $K$ est une constante qui peut par exemple se déterminer en considérant la valeur particulière $\tau=0$ :

$$
K=R_y(0)-2R^2_x(0).
$$

La détermination de $R_y(0)=E[x^4(t)]$ se fait simplement si on connait l'expression des moments d'une loi gaussienne centrée $X$

$$
E \left( X^{2n+1} \right) = 0, \; E \left( X^{2n} \right) = [(2n-1)
\times (2n-3) ... \times 3 \times 1] \sigma^{2n}.
$$

On obtient donc

$$
E[x^2(t)]=\sigma^2 =R_x(0) \quad \text{et} \quad E[x^4(t)]=3 \sigma^4 =3R^2_x(0)
$$

d'où $K=R_x^2(0)$.

```{prf:remark}

pour déterminer la constante $K$, on peut aussi utiliser le fait que pour un signal gaussien centré, $x(t)$ et $x(t-\tau)$ sont asymptotiquement (i.e., quand $\tau \to \infty$) décorrélés, et donc asymptotiquement indépendants, d'où

$$
\lim\limits_{\tau \to \infty} R_x(\tau)=0 \quad \text{et} \quad \lim\limits_{\tau \to \infty} E[x^2(t) x^2(t-\tau)] =R_x^2(0).
$$

```


### Autre exemple d'application : Théorème de Van Vleck

L'application du théorème de Price est parfois plus compliquée que dans l'exemple précédent, comme nous allons le voir dans cet exemple où $y(t) = \text{sign}[x(t)]$ (la fonction $\text{sign}(x)$ vaut $1$ pour $x>0$, $-1$ pour $x<0$ et par convention $\text{sign}(0)=0$). Dans cet exemple, le théorème de Price permet d'obtenir

$$
\frac{\partial R_y(\tau) }{\partial R_x(\tau)} = E \left[
\frac{\partial y(t)}{\partial x(t)} \frac{\partial y(t-\tau)}{\partial x(t-\tau)} \right]= 4E\{ \delta[x(t)] \delta[x(t-\tau)] \}.
$$ 

Pour déterminer $R_y(\tau)$, il faut déterminer le second membre de cette équation, ce qui se fait comme suit

$$
E\{ \delta[x(t)] \delta[x(t-\tau)] \} = \int \int  \delta[x_1] \delta[x_2] p(x_1,x_2) dx_1 dx_2.
$$

d'où

$$
E\{ \delta[x(t)] \delta[x(t-\tau)] \} = \int \int  \delta[x_1] \delta[x_2] p(0,0) dx_1 dx_2=p(0,0) =  \frac{1}{2 \pi \sqrt{|\Sigma|}}.
$$

On en conclut

$$
\frac{\partial R_y(\tau) }{\partial R_x(\tau)} =\frac{4}{2 \pi \sqrt{R_x^2(0)-R_x^2(\tau)}}
$$ 

qui s'intègre pour donner

$$
R_y(\tau)=\frac{2} {\pi} \text{Arcsin} \left[ \frac{R_x(\tau)}{R_x(0)} \right] + K.
$$

La constante $K$ s'obtient en faisant $K=0$, i.e.

$$
K = R_y(0)-\frac{2}{\pi} \text{Arcsin}(1)=R_y(0)-1.
$$

Mais

$$
R_y(0)=E[y^2(t)]=1
$$

d'où $K=0$ et

$$
\boxed{R_y(\tau)=\frac{2} {\pi} \text{Arcsin} \left[ \frac{R_x(\tau)}{R_x(0)} \right]}.
$$

