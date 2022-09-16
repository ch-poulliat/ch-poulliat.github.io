## Propriétés de la fonction d'autocorrélation  et de la densité spectrale


### Fonction d'autocorrélation $R_x(\tau)$

-   <span style="color:rgba(var(--pst-color-link),1)">**Symétrie hermitienne :**</span> 

    $$R_x^*(-\tau) =R_x(\tau).$$ 

    La démonstration ci-dessous est faite pour des signaux aléatoires mais se généralise aux autres classes très facilement
    
    $$R_x^*(-\tau) = \text{conjugué de } E[  x(t)x^*(t+\tau)]=E[  x^*(t)x(t+\tau)]=E[  x(t+\tau)x^*(t)]=R_x(\tau).$$

-   <span style="color:rgba(var(--pst-color-link),1)">**Valeur maximale à l'origine :**</span>

    $$| R_x(\tau)| \le R_x(0)$$ 
    
    La preuve utilise l'inégalité de Cauchy Schwartz définie par
    
    $$\langle x(t), y(t) \rangle ^2 \le ||x(t)||^2 ||y(t)||^2.$$ 
    
    En utilisant cette inégalité, on obtient
    
    $$R_x^2(\tau) = \langle x(t), x(t-\tau) \rangle^2 \le ||x(t)||^2 ||x(t-\tau)||^2 = \langle x(t), x(t) \rangle  \langle x(t-\tau), x(t-\tau) \rangle = R^2_x(0).$$


-   <span style="color:rgba(var(--pst-color-link),1)">**Distance entre $x(t)$ et $x(t-\tau)$ :**</span>

    $$\begin{split}
    d^2[x(t),x(t-\tau)]&= ||x(t)-x(t-\tau)||^2  \\
    &=  \langle x(t)-x(t-\tau),x(t)-x(t-\tau) \rangle  \\
    &= R_x(0)-R_x(\tau)-R_x(-\tau)+R_x(0) \\
    &=2 \left[ R_x(0)-\text{Re}\{R_x(\tau)\} \right].
     \end{split}$$ 
     
    Pour un signal réel, on a $\text{Re}\{R_x(\tau)\}=R_x(\tau)$ donc
    
    $$d^2[x(t),x(t-\tau)]=2 \left[ R_x(0)-R_x(\tau)\right].$$
    
    Donc plus $R_x(\tau)$ est grand, plus la distance entre $x(t)$ et $x(t-\tau)$ est petite. On dit que **$R_x(\tau)$ mesure le lien entre $x(t)$   et $x(t-\tau)$**.

-  <span style="color:rgba(var(--pst-color-link),1)">**Décomposition de la fonction d'autocorrélation :**</span>

    $R_x(\tau)=R_1(\tau)+R_2(\tau)$, où $R_1(\tau)$ est une somme de fonctions périodiques et $R_2(\tau)$ est une fonction qui tend vers
    $0$ lorsque $|\tau| \rightarrow \infty$. La partie $R_1(\tau)$ correspond à la fonction d'autocorrélation de la somme de fonctions
    périodiques tandis que $R_2(\tau)$ est la fonction d'autocorrélation d'un signal déterministe à énergie finie.

### Propriétés de la densité spectrale $s_x(f)$ 

-   <span style="color:rgba(var(--pst-color-link),1)">**Fonction réelle**</span>

    $$s_x(f) \in \mathbb{R}$$
    
    car la transformée de Fourier d'une fonction hermitienne est réelle. De plus si $x(t)$ est un signal réel, alors $R_X(\tau)$ est une
    fonction réelle paire donc $s_x(f)$ est également **réelle paire** (la transformée de Fourier d'un signal réel pair est réelle paire).

-   <span style="color:rgba(var(--pst-color-link),1)">**Positivité**</span>

    $$s_x(f) \ge 0.$$ 
    
    Ceci ne se voit pas directement sur la définition $s_x(f) = \text{TF}[R_x(\tau)]$ mais à partir des expressions équivalentes rappelées ci-dessous :

    -   *Signal déterministe à énergie finie*
    
        $$s_x(f)= \left| X(f) \right|^2$$

    -   *Signal déterministe périodique à puissance finie*
        
        $$s_x(f)= \sum_{k \in \mathbb{Z}} |c_k|^2 \delta(f-kf_0)$$

    -   *Signal déterministe à puissance finie*
        
        $$s_x(f)=s_x(f)= {\underset{T \rightarrow \infty }{\lim }} \frac{1}{T} \left|
        X_T(f) \right|^2$$

    -   *Signal aléatoire*
    
        $$s_x(f)= \lim\limits_{T \to +\infty} \frac{1}{T}  E \left[ |X_T(f)|^2\right]$$
        

-   <span style="color:rgba(var(--pst-color-link),1)">**Intégrale**</span>

    $$\int_{\mathbb{R}} s_x(f) df = R_x(0) = \text{Puissance/Energie}$$
    

-   <span style="color:rgba(var(--pst-color-link),1)">**Décomposition de Lebesgue**</span>


    $s_x(f)=s_1(f)+s_2(f)$, où $s_1(f)$ est un **spectre de raies** et $s_2(f)$ est un **spectre continu**


### Liens entre densité spectrale et transformée de Fourier 

Nous avons vu que pour un **signal à énergie finie**, on a 

$$s_x(f)=|X(f)|^2$$ 

où $X(f)=\text{TF}[x(t)]=\int_{\mathbb{R}} x(t) \exp(-j2 \pi ft)dt$ est la transformée de Fourier du signal $x(t)$ (qui existe pour tout signal à
énergie finie). La densité spectrale d'énergie est donc homogène au module carré d'une transformée de Fourier.

Pour les signaux **périodiques à puissance finie**, on a

$$s_x(f)=\sum_{k= - \infty}^{+ \infty} |c_k|^2 \delta \left( f - \frac{k}{T} \right)$$

où les coefficients $c_k$ sont obtenus par décomposition en série de Fourier du signal périodique $x(t)$

$$x(t)=\sum_{k= - \infty}^{+ \infty}  c_k \exp(-j 2k \pi f t).$$ 

Comme 

$$X(f) = \sum_{k= - \infty}^{+ \infty}  c_k \delta \left( f - \frac{k}{T} \right),$$

on observe que les coefficients des raies spectrales de la densité spectrale de puissance d'un signal périodique sont homogènes aux modules
des carrés des coefficients de sa transformée de Fourier.

Pour les signaux **aléatoires stationnaires**, on admettra que

$$s_x(f)= \lim\limits_{T \to +\infty} \frac{1}{T}  E \left[ |X_T(f)|^2\right]$$

avec

$$X_T(f)=\int_{- \frac{T}{2}}^{ \frac{T}{2}} x(t) \exp(-j 2 \pi f t) dt,$$

ce qui indique que $s_x(f)$ est une quantité positive homogène au module carré d'une transformée de Fourier calculée sur une fenêtre
$\left] - \frac{T}{2}, + \frac{T}{2}\right[$. **Mais on montrerait que la transformée de Fourier d'un signal aléatoire stationnaire n'est pas
définie !!**