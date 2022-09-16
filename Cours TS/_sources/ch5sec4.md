## Preuve du théorème de Price

```{prf:theorem}

Pour tout vecteur Gaussien centré $(X_1,X_2)$, on a pour toute fonction non-linéaire $g$ telle que $Y_1=g(X_1)$ et $Y_2=g(X_2)$, on a le résultat suivant

$$
\frac{\partial E(Y_1 Y_2) }{\partial E(X_1 X_2)} = E \left(
\frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2}
\right)
$$
```

Le vecteur $(X_1,X_2)$ étant Gaussien centré, il possède la densité

$$
p(\boldsymbol{x})=\frac{1}{2 \pi \sqrt{|\boldsymbol{\Sigma}|}} \exp \left[ - \frac{1}{2} \left( \boldsymbol{x}^T \boldsymbol{\Sigma}^{-1} \boldsymbol{x} \right) \right]
$$

avec $\boldsymbol{x}=(x_1,x_2)^T$ et  $\boldsymbol{\Sigma} \in \mathcal{M}_2(\mathbb{R})$ est la matrice de covariance définie par

$$
\begin{split}
\boldsymbol{\Sigma} &= \left(\begin{array}{cc}
E[X^2_1] & E[X_1X_2] \\
E[X_1X_2] & E[X^2_2]
\end{array} \right)\\
 &= \left(\begin{array}{cc}
\sigma_1^2 & E[X_1X_2] \\
E[X_1X_2] & \sigma_2^2
\end{array}\right)
\end{split}
$$

donc

$$
E[ g(X_1) g(X_2)] = \int \int g(x_1)g(x_2) p(\boldsymbol{x}) dx_1 dx_2.
$$

On suppose que les deux fonctions non-linéaires $g(x_1)$ et $g(x_2)$ ont des transformées de Fourier telles que

$$
G(f_1)=\int g(x_1)e^{-j2 \pi f_1 x_1} dx_1 \; \text{et} \; G(f_2)=\int g(x_2)e^{-j2 \pi f_2 x_2} dx_2.
$$

On a alors

$$
g(x_1) = \text{TF}^{-1} [G(f_1)] = \int G(f_1) e^{j2 \pi f_1 x_1} df_1  \; \text{et} \; g(x_2) = \text{TF}^{-1} [G(f_2)] = \int G(f_2) e^{j2 \pi f_2 x_2} df_2

$$

et donc

$$
E[ g(X_1) g(X_2)] = \int \int \left[  \int G(f_1) e^{j2 \pi f_1 x_1} df_1  \right] \left[   \int G(f_2) e^{j2 \pi f_2 x_2} df_2
\right] p(\boldsymbol{x}) dx_1 dx_2.
$$

En supposant qu'on peut intervertir les différentes intégrales, on obtient

$$
E[ g(X_1) g(X_2)] = \int \int G(f_1) G(f_2) \left[ \int \int e^{j2 \pi (f_1 x_1+f_2x_2)  }  p(\boldsymbol{x})dx_1 dx_2\right]  df_1 df_2
$$

Cette expression fait intervenir la fonction caractéristique du vecteur Gaussien $(X_1,X_2)$ qui est connue, d'où

$$
\begin{split}
\int \int e^{j2 \pi (f_1 x_1+f_2x_2)  }  p(\boldsymbol{x})dx_1 dx_2
&= \phi(2 \pi f_1, 2 \pi f_2) \\
 &= \exp \left\{ -\frac{1}{2} [2 \pi f_1, 2 \pi f_2] \Sigma \left[ \begin{array}{c}
2 \pi f_1  \\
2 \pi f_2
\end{array}  \right] \right\} \\
&= \exp \left[- 2 \pi^2 f_1^2\sigma_1^2 - 2 \pi^2  f_2^2 \sigma_2^2 - 4 \pi^2 f_1f_2 E[X_1X_2] \right]
\end{split}
$$

En dérivant cette dernière expression par rapport à $E[X_1X_2]$, on obtient

$$
\small
\frac{\partial \exp \left[  - 2 \pi^2 f_1^2\sigma_1^2  2 \pi^2  f_2^2 \sigma_2^2 - 4 \pi^2f_1f_2 E[X_1X_2] \right] }{\partial E(X_1 X_2)} =  -4 \pi^2f_1f_2  
\exp \left[  -2 \pi^2  f_1^2\sigma_1^2  -2 \pi^2 f_2^2 \sigma_2^2 -4\pi^2 f_1f_2 E[X_1X_2] \right]
$$

d'où

$$
\begin{align*}
\frac{\partial E(Y_1 Y_2) }{\partial E(X_1 X_2)} 
=&  -  \int \int 4 \pi^2 f_1f_2 G(f_1) G(f_2) \exp \left[  -2 \pi^2  f_1^2\sigma_1^2 -2 \pi^2 f_2^2 \sigma_2^2 -4 \pi^2 f_1f_2 E[X_1X_2] \right] df_1 df_2
\\
=& \ -  \int \int 4 \pi^2 f_1f_2 G(f_1) G(f_2)  \phi(2 \pi f_1, 2 \pi f_2)
 df_1 df_2.
\end{align*}
$$


Par ailleurs

$$
 E \left(
\frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2} 
\right)
= \int \int \frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2} p(\boldsymbol{x})dx_1 dx_2.
$$

Utilisant le fait que $\text{TF}[\frac{\partial y_1}{\partial x_1} ]=j2 \pi f_1 G_1(f_1)$ et que $\text{TF}[\frac{\partial y_2}{\partial x_2} ]=j2 \pi f_2 G_2(f_2)$, on obtient

$$\begin{align*}
E \left(
\frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2} 
\right)
=& \int \int  \frac{\partial y_1}{\partial x_1} \frac{\partial y_2}{\partial x_2}   p(\boldsymbol{x})dx_1 dx_2
\\
=& \int \int \left[  \int (j2 \pi f_1)G(f_1) e^{j2 \pi f_1 x_1} df_1  \right] \left[   \int (j2 \pi f_2) G(f_2) e^{j2 \pi f_2 x_2} df_2
\right] p(\boldsymbol{x})dx_1 dx_2 \\
=& \int \int  (j2 \pi f_1)G(f_1)  (j2 \pi f_2)G(f_2) \left[ \int \int  e^{j2 \pi (f_1 x_1+f_2x_2)  }  p(\boldsymbol{x})dx_1 dx_2 \right] df_1 df_2 \\
=& \int \int  (j2 \pi f_1)G(f_1)  (j2 \pi f_2)G(f_2) \phi(2 \pi f_1, 2 \pi f_2)df_1 df_2,
\end{align*}
$$

d'où le résultat final

$$
\frac{\partial E(Y_1 Y_2) }{\partial E(X_1 X_2)} =E \left[ \frac{\partial Y_1}{\partial X_1} \frac{\partial Y_2}{\partial X_2} 
\right].
$$

Avec un raisonnement similaire, on montrerait que

$$
\frac{\partial^{(k)} E(Y_1 Y_2) }{\partial E(X_1 X_2)^{(k)}} =E \left[ \frac{\partial^{(k)} Y_1}{\partial X^{(k)}_1} \frac{\partial^{(k)} Y_2}{\partial X^{(k)}_2} 
\right]
$$

où $^{(k)}$ désigne la dérivée $k$-ième.

