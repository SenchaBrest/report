#import "gost.typ": gost, numless

#show: gost.with()

#outline()
#numless[= Введение]

#lorem(200) @githubTypst

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

= Глава
Таблица @t
#figure(
  table(
    columns:  (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],  
  ),
  caption: [Timing results],
) <t>

Картинка @cat
#figure(
  image("assets/cat.jpg", width: 80%),
  caption: [
    Котик.
  ],
) <cat>

This was already noted by pirates long ago. @datasheet2025 Multiple sources say ... @githubTypst @nationalGeographicMars.

#bibliography("referencies.bib")
