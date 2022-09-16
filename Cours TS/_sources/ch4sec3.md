## Quantification
L'opération de quantification est l'opération qui consiste à représenter des échantillons d'un signal analogique (à priori à valeur dans $\mathbb{R}$) par un signal qui peut prendre un ensemble fini de valeurs, la cardinalité de ce dernier étant liée au nombre de bits que l'on se donne pour représenter ce signal. Pour un signal suppose borné à valeurs dans l'intervalle $[-A_{\max},A_{\max}],$ on va partitionner cet intervalle en $N=2^b$ intervalles distincts. Si le signal $x(t)$ est à valeur dans l'un de ces intervalles, on lui  assignera une valeur dans cet intervalle qui servira de représentant, comme par exemple le milieu de l'intervalle. On peut alors représenter le signal de la façon suivante

$$
x_{Q}(t)=i \Delta q_{i}=x_{i} \text { et } x_{i}-\frac{\Delta q_{i}}{2} \leq x(t) \leq x_{i}+\frac{\Delta q_{i}}{2}
$$

avec les quantités suivantes:

-  $\Delta q_{i}$ est appelé pas de quantification
-  si $\Delta q_{i}=\Delta q=\frac{2 A_{\max }}{N},$ on parle de quantification uniforme
-  $x_{i}$ est appelé niveau de quantification
- $N=2^{n}$ est le nombre de niveaux de quantification et $n$ le nombre de bits de quantification 


De manière intuitive, on voit que plus $N$ est grand, plus on aura une représentation "fine" du signal, sans distorsion/déformation. La question est donc maintenant de déterminer quel est l'impact de la quantification sur la représentation du signal. Pour cela, on va adopter un cadre aléatoire et modéliser le signal quantifié comme le signal original plus un bruit additif de quantification. On a donc

$$
x_Q(t)=x(t)+\epsilon{(t)}
$$ 

où $\epsilon(t)$ est le bruit additif de quantification. Lorsque le nombre de niveaux de quantification $N$ est suffisamment grand, on peut supposer que $\epsilon(t)$ suit une loi uniforme sur $\left[-\frac{\Delta q}{2}, \frac{\Delta q}{2}\right]$. 

Pour déterminer, l'influence de ce bruit, on va naturellement calculer un rapport signal sur bruit (en anglais signal-to-noise ratio, SNR) dont l'expression en dB est donnée par

$$
\mathrm{SNR}_{\mathrm{dB}}=10 \log _{10}\left(\frac{\sigma_{x}^{2}}{\sigma_{\epsilon}^{2}}\right)
$$

où $\sigma_{x}^{2}$ est la puissance du signal $x(t)$ et $\sigma_{\epsilon}^{2}$ est la puissance du bruit additif $\epsilon(t)$. Il faut maintenant faire des hypothèses sur les signaux si on veut pouvoir calculer quelque-chose.

D'après les hypothèses liées à la loi du bruit $\epsilon(t)$ (loi uniforme), un calcul immédiat permet de calculer la variance de ce bruit

$$
\sigma_{\epsilon}^{2}=\frac{(\Delta q)^{2}}{12}.
$$

Supposons un signal utile de type sinusoïdal d'amplitude $A$, comme vu en exercice, on obtient 

$$
\sigma_{x}^{2}=\frac{A^{2}}{2}.
$$

On obtient alors après report des expressions obtenues ci-dessus 

$$
\mathrm{SNR}_{\mathrm{dB}} \simeq 6 n+1.76.
$$

C'est la fameuse règle du "$6$dB par bit" qui permet de briller en société. Cette règle simple montre que chaque bit additionnel de quantification permet d'améliorer le rapport signal sur bruit de $6$dB. Cette règle simple et correspondant à un modèle simple permet cependant en pratique de bien capturer l'effet de la quantification.

Ces résultats peuvent être généralisés à d'autres types de signaux $x(t)$ comme les signaux gaussiens. On peut également considérer une quantification non uniforme, i.e., dont la taille des intervalles est dépendante de la distribution de l'amplitude du signal.

