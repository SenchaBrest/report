#let номер = "ДП.ИИ21.210560-05\u{00a0}94\u{00a0}00" // переопределяем номер

#set page(
  paper: "a1",
  flipped: true,
  margin: 0cm
)

#align(
  stack(
    dir: ltr,
    stack(
      dir: ttb,
      image("../assets/356.png", width: 33.3%),
      image("../assets/351.png", width: 33.3%),
      image("../assets/217.png", width: 33.3%),
      spacing: 1em
    ),
    stack(
      dir: ttb,
      image("../assets/407.png", width: 33.3%),
      image("../assets/210.png", width: 33.3%),
      image("../assets/214.png", width: 33.3%),
      spacing: 9em
    ),
    stack(
      dir: ttb,
      image("../assets/101.png", width: 33.3%),
      image("../assets/105.png", width: 33.3%),
      image("../assets/204.png", width: 33.3%),
      spacing: 2em
    ),
  ),
  center + horizon
)

#pagebreak()

#import "../utils/горизонтальная_рамка.typ": рамка

#рамка(номер: номер, название_плаката: "Результаты испытаний")

