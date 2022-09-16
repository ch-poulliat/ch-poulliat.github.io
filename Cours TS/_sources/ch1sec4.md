## Fonctions spéciales



### Impulsion de Dirac 

L'impulsion de Dirac, souvent dénommée abusivement fonction de Dirac, n'est pas une fonction mais une distribution (voir Cours Fourier et Intégration), encore appelée fonction généralisée. Pour toute fonction continue $x(t)$ en $0$, l'impulsion de Dirac est définie par

$$\int_{-\infty}^{\infty} x(t) \delta(t) d t=x(0).$$

Par conséquence de cette définition, on a 

$$\int_{-\infty}^{\infty} \delta(t) d t=1.$$ 

De même, on peut montrer que pour $x\left(t\right)$ continue en $t_0$, on a

$$\int_{-\infty}^{\infty} x(t) \delta\left(t-t_{0}\right) d t=x\left(t_{0}\right).$$

L'impulsion de Dirac est un opérateur fondamental en théorie du signal car il permet la formalisation de l'opération d'échantillonnage, et à ce
titre est souvent appelé opérateur d'échantillonnage. Formellement, on obtient les relations suivantes qui font référence à une propriété dite
de localisation 

$$x(t) \delta(t)=x(0) \delta(t)$$

$$x(t) \delta(t-t_0)=x(t_0) \delta(t-t_0)$$ 

De la même manière, via la convolution, l'impulsion de Dirac est l'opérateur de décalage temporel.
Ainsi, on a la relation suivante

$$x(t) *  \delta\left(t-t_{0}\right)=x\left(t-t_{0}\right).$$ 

En particulier, $\delta(t)$ est l'élément neutre de la convolution, ie.

$$x(t) *  \delta\left(t\right)=x(t).$$ 

L'impulsion de Dirac admet également une transformée de Fourier **au sens des distributions**. On a
alors les deux transformées de Fourier suivantes

$$\textrm{TF}[\delta(t)]=1, \quad \textrm{TF}[1]=\delta(f),$$ 

et en appliquant les propriétés de décalage, on obtient

$$\textrm{TF}\left[\delta\left(t-t_{0}\right)\right]=\exp \left(-j 2 \pi f t_{0}\right), \textrm{TF}\left[\exp \left(j 2 \pi f_{0} t\right)\right]=\delta\left(f-f_{0}\right).$$

### Train de Dirac

Par définition, un train de Dirac (appelé aussi *peigne de Diracs*) est une séquence infinie
d'impulsions de Dirac défini comme suit

$$\amalg \hspace{-0.3cm}\amalg _{T}\left( t\right) =\underset{k\in \mathbb{Z}}{\sum }\delta \left( t-kT\right).$$

Sa transformée de Fourier **au sens des distributions** est donnée par

$$\mathrm{TF}[\amalg \hspace{-0.3cm}\amalg _{T}\left( t\right)]=\frac{1}{T}\amalg \hspace{-0.3cm} \amalg _{1/T}\left( f\right).$$

C'est un opérateur central en théorie du signal quand on parle d'échantillonnage. En effet, vous verrez dans la suite du cours qu'un
signal numérique se modélise à partir de la version échantillonnée à la période $T$ du signal analogique $x_a(t)$ (notée $x_e(t)$) à l'aide de
cet opérateur. On aura en particulier la relation suivante

$$x_e(t)=x_a(t).\amalg \hspace{-0.3cm}\amalg _{T}\left( t\right)=\underset{k\in \mathbb{Z}}{\sum } x_a(kT)\delta \left( t-kT\right).$$

De cette relation simple, dans la deuxième partie du cours, on pourra alors déterminer à quelle(s) condition(s) on peut représenter un signal
continu à l'aide des échantillons numériques $\{x[n]=x_a(nT)\}_{n \in \mathbb{Z}}$ sans perte d'information (ou de manière équivalent sans \"distorsion\"). De même, on pourra lier les propriétés spectrales de $x_e(t)$ avec celles de $x_a(t)$ et de la séquence $\{x[n]\}_{n \in \mathbb{Z}}.$ 

### Fonction indicatrice et opérateur de restriction

Pour tout interval $\mathcal{I} \subset \mathbb{R},$ on définit la fonction indicatrice

$$\mathbb{1}_{\mathcal{I}}(t)=\left\{\begin{array}{ll}
1, & \text { pour } t \in \mathcal{I} \\
0, & \text { sinon }
\end{array}\right.$$ 

De la même façon, on peut définir l'opérateur $\mathbb{1}_{\mathcal{I}}$ tel que 

$$y = \mathbb{1}_{\mathcal{I}} x$$

avec 

$$y(t)=\left\{\begin{aligned}
x(t), & \text { pour } t \in \mathcal{I} \\
0, & \text { sinon }
\end{aligned}\right.$$ 


### Fonction de Heaviside - Echelon unité 

La fonction de Heaviside, encore appelée *échelon unité*, est définie par

$$u(t)=\left\{\begin{array}{ll}
1, & \text { pour } t \geq 0 ; \\
0, & \text { sinon }
\end{array} \quad t \in \mathbb{R}. \right.$$ 

Cette fonction appartient aux espaces fonctionnels $\mathcal{L}^{\infty}(\mathbb{R}),$ mais pas à
$\mathcal{L}^{1}(\mathbb{R})$, ni à $\mathcal{L}^{2}(\mathbb{R}).$

La restriction d'un signal $x(t)$ défini sur la droite réelle peut être définie facilement à l'aide de la fonction de Heaviside et est souvent
utilisée pour l'analyse fréquentielle des signaux. Par exemple, on peut définir la restriction $x_{+}=\mathbb{1}_{\mathbb{R}^+} \; x$ de $x(t)$
aux valeurs temporelles positives qui peut s'écrire 

$$x_{+}(t)=\left\{\begin{aligned}
x(t), & \text { pour } t \geq 0 \\
0, & \text { sinon }
\end{aligned}\right.=u(t)x(t).$$

```{exercise}
:label: exer1
Montrer que la restriction de $x(t)$ à un support $[t_0,t_1)$ peut s'écrire

$$x_{[t_0,t_1)}(t)=\left\{\begin{aligned}
x(t), & \text { pour } t \in\left[t_{0}, t_{1}\right) \\
0, & \text { sinon }
\end{aligned}\right.=\left(u\left(t-t_{0}\right)-u\left(t-t_{1}\right)\right) x(t)$$

```

### Fonction Porte

La fonction porte est une fonction très souvent rencontrée en théorie du signal, car elle permet de traduire que l'on a souvent qu'un
enregistrement des signaux sur une durée finie (notée $T$). Cette fonction porte est définie par 

$$\Pi_{T}(t)=\left\{\begin{aligned}
1 , & \text { pour }|t| \leq \frac{T}{2}  \\
0, & \text { sinon }
\end{aligned}\right.$$


```{exercise}
:label: exer2

Exprimer la fonction porte en fonction de la fonction échelon.

```
