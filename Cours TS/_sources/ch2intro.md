# Signaux déterministes et aléatoires

On s'intéresse dans cette partie à décrire différentes classes de
signaux à temps continu notés par exemple $x(t)$, $y(t)$ \... qui
représentent l'évolution d'une mesure au cours du temps, par exemple
l'évolution de la température prise en un point donné au cours du temps.
On a l'habitude de regrouper ces signaux en différentes classes pour
lesquelles la notion de spectre diffère légèrement. Tout d'abord, on
distingue les signaux **déterministes** des signaux **aléatoires**, les
premiers prenant à un instant donné la même valeur pour différentes
réalisations (comme $x(t)=\cos(2t+3)$), les autres étant définis à
l'aide de variables aléatoires pour modéliser le fait que ces signaux
diffèrent d'une réalisation à une autre (comme $x(t)=\cos(2t+\phi)$,
avec $\phi$ variable aléatoire uniforme sur l'intervalle $[0, 2 \pi[$).