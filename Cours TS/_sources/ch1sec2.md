## Produit de convolution

### Définition

```{prf:definition} Produit de Convolution
:label: pdtconv


Le produit de convolution est défini (quand il existe) par

$$
y(t)=(h * x)(t)=h(t)*x(t)=\int_{-\infty}^{\infty} x(\tau) h(t-\tau) d \tau=\int_{-\infty}^{\infty} x(t-\tau) h(\tau) d \tau
$$
```
### Propriétés

-   <span style="color:rgba(var(--pst-color-link),1)"> ***Commutativité :***</span>

    $$h * x=x * h$$

-   <span style="color:rgba(var(--pst-color-link),1)"> ***Associativité :***</span>
    
    $$g *(h * x)=g * h * x=(g * h) * x$$

-   <span style="color:rgba(var(--pst-color-link),1)"> ***Lien avec le produit scalaire :***</span>


    $$(h * x)(t)=\int_{-\infty}^{\infty} x(\tau) h(t-\tau) d \tau=\left\langle x(\tau), h^{*}(t-\tau)\right\rangle_{\tau}$$

-   <span style="color:rgba(var(--pst-color-link),1)"> ***Autocorrélation déterministe :***</span>

    On définira plus tard plus tard l'autocorrélation déterministe comme

    $$R_{x}(\tau)=\int_{\mathbb{R}} x(t) x^{*}(t-\tau) d t.$$ 
    
    On peut alors montrer que
    
    $$R_{x}(\tau)= \langle x(t),x(t-\tau) \rangle=x(\tau)*x^*(-\tau).$$

    