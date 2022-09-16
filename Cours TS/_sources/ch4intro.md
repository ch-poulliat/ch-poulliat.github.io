# Traitements non-linéaires

Les traitements à base de filtres ne sont pas les seuls types de traitements que l'on peut utiliser. Si l'aspect linéaire des traitements est très attractif du point de point de vue de la complexité, on doit dans certaines applications utiliser des traitements non linéaires. De plus, de nombreux systèmes comme en télécommunication ou en imagerie comme des systèmes dont la fonction de transfert est non linéaire.

On considère dans ce chapitre des traitements dits non-linéaires et sans mémoire qui à un signal d'entrée $x(t)$, génèrent un signal de sortie $y(t)$ défini par une transformation $g$ telle que

$$
y(t)=g[x(t)].
$$ 

Parmi les exemples classiques, on étudiera en particulier 

- Le **quadrateur**, qui à un signal réel x(t) associe le signal

$$
y(t)=x^{2}(t)
$$

- l'opération de **quantification** qui sera notée

$$
y(t)=x_{Q}(t)
$$

