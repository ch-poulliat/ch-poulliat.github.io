## Cas des signaux déterministes - exemple du quadrateur

Dans le cas déterministe,  la relation 

$$
y(t)=g[x(t)]
$$ 

ne vérifiant pas l'axiomatique d'un FLID, on ne peut pas se contenter d'une caractérisation du système par sa réponse impulsionnelle. Pour déterminer le comportement de la sortie du système, il faut souvent calculer explicitement l'expression de la sortie en fonction de l'entrée dans le domaine temporel ou fréquentiel, selon la facilité à calculer dans l'un ou l'autre domaine. On est donc fortement dépendant de la forme explicite de l'opérateur non linéaire $g$. 

### Propriété générale

Si l'on prend l'exemple du quadrateur, on a

$$
y(t)=x^{2}(t)
$$

et donc dans le domaine fréquentiel

$$
Y(f)=X(f)*X(f).
$$

On montre que si le support de $X(f)$ est $]-F_1, +F_1[$, alors celui de $Y(f)=X(f)*X(f)$ est inclu dans $]-2F_1,2F_1[$ et est en général égal à $]-2F_1,2F_1[$. L'effet d'un quadrateur est donc d'élargir le support fréquentiel du signal, ce qui dans des applications comme les télécommunications peut poser souci du point de vue système.

\subsection{Signal sinusoidal}
Si on considère en entrée le signal $x(t)=A \cos(2\pi f_0t),$ un simple calcul de la transformée de Fourier de $y(t)=x^2(t)$ nous donne

  $$
  Y(f)=\frac{A^{2}}{2} \delta(f)+\frac{A^{2}}{4}\left[\delta\left(f-2 f_{0}\right)+\delta\left(f+2 f_{0}\right)\right].
  $$
  
On voit alors la disparition de la fréquence $f_0$ et l'apparition de la fréquence double $2f_0$. 

### Signal sinus cardinal

Si on considère le cas d'un signal de type sinus cardinal donné par $x(t)=f_{0} \text{sinc} \left(\pi f_{0} t\right)$ (avec $\text{sinc}(x)=\frac{\sin(x)}{x}$) de transformée de Fourier $X(f)=\Pi_{f_0}(f),$ alors on obtient 

$$
Y(f) = f_0 \Lambda _{f_0}\left( f\right).
$$

On voit bien sur cet exemple que la bande fréquentielle du signal a été doublée!

```{exercice}

Que se passe-t-il si on a plusieurs signaux cosinus à des fréquences différentes en entrée du quadrateur ?
```

