## Formulaire et Tables des principales transformées de Fourier

### Propriétés générales T.F.


$$ax(t)+by(t) \rightleftharpoons aX(f)+bY(f)$$

$$x(t-t_{0}) \rightleftharpoons X(f)e^{-i 2 \pi f t_{0}}$$

$$x(t)e^{+i 2 \pi f_{0} t} \rightleftharpoons X(f-f_{0})$$

$$x^{\ast }(t)\rightleftharpoons X^{\ast}(-f)$$

$$x(t) y(t)\rightleftharpoons X(f)\ast Y(f)$$

$$x(t)\ast y(t) \rightleftharpoons X(f) Y(f)$$

$$x(at+b) \rightleftharpoons \frac{1}{\left|a\right|}X\left(\frac{f}{a}\right) e^{i2\pi \frac{b}{a}f}$$ 

$$\frac{dx^{(n)}(t)}{dt^{n}} \rightleftharpoons  \left( i2\pi f\right) ^{n}X(f)$$

$$\left( -i2\pi t\right) ^{n}x(t) \rightleftharpoons \frac{dX^{(n)}(f)}{df^{n}}$$ 
    

### Formules de Parseval
  
   $$\int_{\mathbb{R}}x(t)y^{\ast }(t)dt=\int_{\mathbb{R}}X(f)Y^{\ast }(f)df$$ 
   
   $$\int_{\mathbb{R}}\left| x(t)\right| ^{2}dt=\int_{\mathbb{R}}\left| X(f)\right| ^{2}df$$
   
###  Série de Fourier  
   $$\underset{n\in \mathbb{Z}}{\sum }c_{n}e^{+i2\pi nf_{0}t}\rightleftharpoons \underset{n\in \mathbb{Z}}{\sum }c_{n}\delta \left( f- nf_{0}\right)$$


```{warning} 

$\Pi _{T}\left( t\right)$ note une fenêtre rectangulaire de support égal à $T$.

$\Lambda _{T}\left( t\right)$ note une fenêtre triangulaire de support égal à $2T$ (de demi-base égale à $T$).

$$\Pi _{T}\left( t\right) \ast \Pi _{T}\left( t\right) =T~\Lambda _{T}\left(
t\right)$$

```