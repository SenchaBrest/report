#import "../gost.typ": numless
= Глава
Содержание первой главы. 
+ раз
  - раз раз

#linebreak()
- один
  - один

== подглава
Формула @ratio
$ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>

$ F_n = (1 / sqrt(5) phi.alt^n) $

Таблица @t
#figure(
  table(
    columns:  (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],  
  ),
  caption: [Timing results],
) <t>