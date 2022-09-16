## Ergodicité

### Généralités
Lorsqu'on veut montrer qu'un signal aléatoire $X(t)$ est stationnaire (au sens large), il faut vérifier que $E[X(t)]$ et $E[X(t)X(t-\tau)$ sont deux quantités indépendantes du temps, ce qui nécessite en pratique de calculer des moyennes statistiques à partir de plusieurs réalisations de $X(t)$ notées $X^{(i)}(t)$, $i=1,...,N$ où $N$ est le nombre de réalisations (appelées parfois trajectoires) de $X(t)$. Par exemple pour la moyenne, on peut déterminer la ***moyenne statistique*** de $X(t)$ définie par

$$
m(t)= \frac{1}{N} \sum_{i=1}^{N} X^{(i)}(t)
$$

avec un nombre de réalisations $N$ suffisamment grand (pour que $m(t)$ soit une bonne approximation de $E[X(t)]$, en vertu de la loi des grands nombres) et vérifier que cette quantité ne fluctue pas trop  et peut donc être considérée comme une constante. Mais cette approche nécessite d'avoir à notre disposition plusieurs réalisations de $X(t)$, ce qui peut être contraignant. Dans les applications pratiques, il est évidemment plus simple de déterminer la moyenne de $X(t)$ à l'aide d'une ***moyenne temporelle***

$$
\bar{X}_T= \frac{1}{T} \sum_{i=1}^{T} X(t_i)
$$

à partir d'une seule réalisation de $X(t)$, où les instants $t_i$ sont les instants d'échantillonnage de $X(t)$. La notion d'ergodicité (au premier ordre pour la moyenne, au second ordre pour la fonction d'autocorrélation, ...) précise dans quelles conditions on peut estimer la moyenne statistique de $X(t)$ à l'aide de sa moyenne temporelle $\bar{X}_T$.

On dit qu'un signal aléatoire à temps continu $X(t)$ est ***ergodique au premier ordre*** si 

$$
Y_{T}=\frac{1}{T}\int_{0}^{T}X(u)du \overset{\textrm{mq}}{\underset{T\to +\infty}{\longrightarrow}}  E\left[ X(t)\right]  
$$

c'est-à-dire si la moyenne temporelle $Y_T$ converge vers la moyenne statistique $E\left[ X(t)\right]$ (qui est indépendante de $t$ pour un signal stationnaire et sera notée $m$). On notera que la limite dans l'équation précédente est calculée au sens de la convergence en moyenne quadratique, c'est-à-dire

$$
Y_{T} \overset{\textrm{mq}}{\underset{T\to +\infty}{\longrightarrow}}  E\left[ X(t)\right]  =m \Leftrightarrow \lim\limits_{T \to \infty} E\left[ (Y_T-m)^2\right] =0.
$$

On remarquera que si $X(t)$ est un signal ergodique au premier ordre, alors

$$
E\left[ X(t)\right]  = \lim\limits_{T \to \infty} Y_T
$$

et comme cette limite (au sens de la convergence en moyenne quadratique) ne dépend pas de $t$, le signal $X(t)$ est nécessairement stationnaire au premier ordre. L'inverse est faux, comme nous le verrons sur certains exemples. La propriété d'ergodicité est donc plus forte que la stationnarité.

### Exemples

```{prf:example} Le secteur

$$
X(t)=A\cos \left( 2\pi f_{0}t+\theta \right) 
$$

avec $A=220 \sqrt{2}$, $f_{0}=50Hz$ et $\theta $ uniformément répartie sur $\left] 0,2\pi \right[$. Nous savons que le signal $X(t)$ est de moyenne nulle $E[X(t)]=0$ et de fonction d'autocorrélation $E[X(t)X(t-\tau)=\frac{A^2}{2} \cos \left( 2\pi f_{0} \tau \right)$. Le signal $X(t)$ est donc ergodique au premier ordre si

$$
Y_{T}=\frac{1}{T}\int_{0}^{T}X(u)du \overset{\textrm{mq}}{\underset{T\to +\infty}{\longrightarrow}} 0.
$$

Mais

$$
\begin{split}
Y_{T}&= \frac{1}{T}\int_{0}^{T} A \cos \left( 2\pi f_{0}u+\theta \right) du  \\
&=  \left[ \frac{A \sin \left( 2\pi f_{0}u+\theta \right)} {2 \pi f_0} \right]_{u=0}^{u=T} \\
&= \frac{A \sin \left( 2\pi f_{0}T+\theta \right) -A\sin (\theta)} {2 \pi f_0 T} .\label{YT}
 \end{split}
$$

donc

$$
\left| Y_{T} \right| \le \frac{A}{\pi f_0 T} 
$$

et par suite

$$
E\left[ (Y_T-m)^2\right] = E\left[ Y_T^2\right] \le \frac{A^2}{\pi^2 f_0^2 T^2}  \;  {\underset{T\to +\infty}{\longrightarrow}} 0.
$$
 
ce qui prouve que le signal $X(t)$ est **ergodique au premier ordre**.
```

```{prf:example} Le carré du secteur

\begin{eqnarray}
X(t) &=&A \cos ^{2}\left( 2\pi f_{0}t+\theta \right)  \\
&=&A \left[ \frac{1}{2}+\frac{1}{2}\cos \left( 4\pi f_{0}t+2\theta
\right) \right] 
\end{eqnarray}

où $\theta $ est une variable aléatoire uniformément répartie sur $\left] 0,2\pi \right[ $ et $A$ une variable aléatoire de
moyenne $m_A$ et de variance $\sigma_A^{2}>0$ indépendante de $\theta$. La moyenne de $X(t)$ est alors

$$
E[X(t)] = m = \frac{m_A}{2}.
$$

Par ailleurs

$$
\begin{split}
Y_{T}&= \frac{A}{2T}\int_{0}^{T} \left[ 1+\cos \left( 4\pi f_{0}u+2\theta
\right) \right]du   \\
&=  \frac{A}{2} +  \frac{A}{2T}  \left[ \frac{\sin \left( 4\pi f_{0}u+2\theta \right)} {4 \pi f_0 } \right]_{u=0}^{u=T} \\
&= \frac{A}{2} +  \frac{A}{2T}  \left[ \frac{\sin \left( 4\pi f_{0}T+2\theta \right) - \sin \left( 2\theta \right)} {4 \pi f_0} \right]. \label{Y2T}
 \end{split}
$$

donc

$$
 Y_{T} \overset{\textrm{mq}}{\underset{T\to +\infty}{\longrightarrow}} \frac{A}{2} \neq E[X(t)] = \frac{m_A}{2}.
$$

ce qui prouve que le signal $X(t)$ **n'est pas ergodique au premier ordre**.
```

```{prf:example} Autres exemples

- ***Amplitude aléatoire***

$$
X(t)=V 
$$

avec $V$ variable aléatoire uniforme sur $]0, V_0[$ (avec par exemple $V_0=10$ volts).

- ***Modulation du secteur***

$$
Z(t)=X(t) \exp \left( -j2 \pi f_0 t \right)
$$

avec $X(t)=A\cos \left( 2\pi f_{0}t+\theta \right)$ le secteur défini ci-dessus.
```

### Théorème

```{prf:theorem}

Pour un processus aléatoire stationnaire au sens large $X(t)$ de moyenne $E\left[ X(t)\right] =m$, de fonction d'autocorrélation 

$$
R_X\left( \tau \right) =E\left[ X(t)X^{\ast }\left( t-\tau \right) \right]
$$

et de densité spectrale de puissance 

$$s_X(f)=TF\left[ R_{X}\left( \tau
\right) \right],$$ 

on a

$$
Y_{T}=\frac{1}{T}\int_{0}^{T}X(u)du \overset{\textrm{mq}}{\underset{T\to +\infty}{\longrightarrow}}  m  \Leftrightarrow \Delta S_X\left( 0\right) =\left|
m\right| ^{2}
$$

avec $\Delta S_X\left( 0\right) =S_X\left( 0^{+}\right) -S_X\left( 0^{-}\right)$ et $s_X\left( f\right) =\frac{dS_X(f)}{df}$.
```

```{prf:proof}

Comme

$$
E\left[ \left| Y_{T}-m\right| ^{2}\right] =E\left[ Y_{T}Y_{T}^{\ast }\right]
-\left| m\right| ^{2} 
$$

il suffit de montrer que 

$$
E\left[ Y_{T}Y_{T}^{\ast }\right] =\Delta S_X\left( 0\right).
$$

Par utilisation de l'isométrie fondamentale $X(t)\leftrightarrow e^{j2\pi ft}$, on a 

$$
\begin{split}
E\left[ Y_{T}Y_{T}^{\ast }\right]  &=\int_{\Bbb{R}}\left| \frac{e^{j2\pi
ft}-1}{j2\pi fT}\right| ^{2}s_X(f)df \\
&=\int_{-\infty }^{-\frac{1}{\sqrt{T}}}+\int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T}}}+\int_{\frac{1}{\sqrt{T}}}^{+\infty }\left| \frac{e^{j2\pi fT}-1}{j2\pi fT}\right| ^{2}s_X(f)df \\
&=I_{1}+I_{2}+I_{3}
\end{split}
$$

On exprime alors les trois intégrales comme suit 

- **Intégrale $\mathbf{I}_{3}$**

$$
\begin{split}
I_{3} &=\int_{\frac{1}{\sqrt{T}}}^{+\infty }\left| \frac{e^{j2\pi fT}-1}{j2\pi fT}\right| ^{2}s_X(f)df \\
&\leq \int_{\frac{1}{\sqrt{T}}}^{+\infty }\frac{4}{4\pi ^{2}f^{2}T^{2}} s_X(f)df \\
&\leq \frac{1}{\pi ^{2}T}\int_{\frac{1}{\sqrt{T}}}^{+\infty }s_X(f)df \\
&\leq \frac{R_X\left( 0\right) }{\pi ^{2}T} \overset{}{\underset{T\to +\infty}{\longrightarrow}} 0
\end{split}
$$

où $R_X(\tau)$ est la fonction d'autocorrélation du signal $X(t)$.

- **Intégrale $\mathbf{I}_{1}$**

Résultat similaire après changement de variables $u=-f$.

- **Intégrale $\mathbf{I}_{2}$**

$$
I_{2}=\int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T}}}\left| \frac{e^{j2\pi
fT}-1}{j2\pi fT}\right| ^{2}dS_X(f) 
$$

On pose 

$$
\widetilde{S}_X\left( f\right) =\left\{ 
\begin{array}{c}
S_X(f)\qquad f<0 \\ 
S_X\left( f\right) -\Delta S_X\left( 0\right) \qquad f\geq 0
\end{array}
\right. 
$$

Par construction, en notant $U(f)$ l'échelon de Heaviside, la fonction $\widetilde{S}_X\left( f\right) =S_X\left( f\right) -\Delta
S_X\left( 0\right) U(f)$ est continue en $f=0$. Alors : 

$$
\begin{split}
I_{2} &= \int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T}}}\left| \frac{e^{j2\pi fT}-1}{j2\pi fT}\right| ^{2}dS_X(f) \\
&=\Delta S_X\left( 0\right) +\int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T}}}\left| \frac{e^{j2\pi fT}-1}{j2\pi fT}\right|^{2}d\widetilde{S}_X(f)
\end{split}
$$

Puisque pour $x>0$, on a

$$
\begin{array}{c}
\left| \int_{0}^{x}e^{iu}du\right| &\leq &\int_{0}^{x}\left| e^{iu}\right|
du=x \\
\left| e^{ix}-1\right| &\leq &x,
\end{array}
$$

on en déduit 

$$
\begin{split}
I_{2}-\Delta S_X\left( 0\right) &=\int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T
}}}\left| \frac{e^{j2\pi fT}-1}{j2\pi fT}\right| ^{2}d\widetilde{S}_X(f) \\
&\leq \int_{-\frac{1}{\sqrt{T}}}^{\frac{1}{\sqrt{T}}}d\widetilde{S}_X(f)=
\widetilde{S}_X\left(\tfrac{1}{\sqrt{T}}\right)-\widetilde{S}_X\left(-\tfrac{1}{\sqrt{T}}\right)
\end{split}
$$

Par continuité de $\widetilde{S}_X\left( f\right) $ et par passage à la limite $T \longrightarrow + \infty$,  on en déduit

$$
I_{2}=  \Delta S_X\left( 0\right).
$$

```

```{prf:example} Le secteur

Puisque $E[X(t)] =0$, il suffit de vérifier que $\Delta S_X\left( 0\right) = 0$, ce qui est immédiat. En effet, puisque $E[X(t)X(t-\tau)=\frac{A^2}{2} \cos \left( 2\pi f_{0} \tau \right)$, la densité spectrale de puissance de $X(t)$ est

$$
s_X(f)=\frac{A^2}{4}  \left[ \delta(f-  f_{0}) + \delta(f+  f_{0})  \right]
$$

et son intégrale s'écrit

$$
S_X(f)=\frac{A^2}{4}  \left[ U(f-  f_{0}) + U(f+  f_{0})  \right],
$$

d'où

$$
\Delta S_X\left( 0\right) =0.
$$

**Ceci confirme que le secteur est un signal ergodique au premier ordre**.
```
```{prf:example} Le carré du secteur

La fonction d'autocorrélation du carré du secteur est

$$
E[X(t)X(t-\tau)] = \frac{E[A^2]}{4} E \left \{ [1+\cos(4 \pi f_0 t +2 \theta)] [1+\cos(4 \pi f_0 t-4 \pi f_0 \tau +2 \theta)] ]\right \}
$$

$$
\begin{split}
E[X(t)X(t-\tau)] & = \frac{E[A^2]}{4} E \left \{ [1+\cos(4 \pi f_0 t +2 \theta)] [1+\cos(4 \pi f_0 t-4 \pi f_0 \tau +2 \theta)] ]\right \} \\
&=  \frac{E[A^2]}{4} +  \frac{E[A^2]}{8} \cos(4 \pi f_0 \tau),   
\end{split}
$$

d'où la densité spectrale de puissance

$$
s_X(f) = \frac{E[A^2]}{4}\delta(f) + \frac{E[A^2]}{16} \delta(f-2f_0)
+  \frac{E[A^2]}{16} \delta(f+2f_0)
$$

et son intégrale

$$
S_X(f) = \frac{E[A^2]}{4} U(f) + \frac{E[A^2]}{16} U(f-2f_0)
+  \frac{E[A^2]}{16} U(f+2f_0).
$$

On en déduit

$$
 \Delta S_X\left( 0\right)-m^2 =  \frac{E[A^2]}{4} -\frac{m_A^2}{4}=\frac{\sigma_A^2}{4}
$$ 

qui est différent de $0$ lorsque $A$ est une variable aléatoire (non constante). **Ceci confirme que le carré du secteur est un signal non ergodique.**
```

### Résultats intéressants

- Un signal aléatoire $x(t)$ est ergodique au premier ordre si et seulement si

$$
\frac{1}{T} \int_0^T c_X(\tau) d \tau  \overset{}{\underset{T\to +\infty}{\longrightarrow}}  0
$$

où $c_X(\tau) = E[X(t)X^{*}(t-\tau)] - \left| m\right| ^{2}$ est ***l'autocovariance*** de $X(t)$.

- ***Condition suffisante d'ergodicité au premier ordre :*** 

si $c_X(\tau)  \overset{}{\underset{\tau \to +\infty}{\longrightarrow}}  0$, alors $x(t)$ est ergodique au premier ordre.

Les preuves de ces résultats sont disponibles dans le livre de Papoulis  {cite:p}`Papoulis` (voir  Eq. (12.7) p. 526 et Eq. (12.10) p. 527).

