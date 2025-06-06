#import "../utils/вертикальная_рамка_для_плаката.typ": рамка

#let margin = (left: 4cm, right: 10mm, top: 10mm, bottom: 10mm)

#set page(
  paper: "a1",
  background: pad(
    рамка(доп_название: "Схема модуля анализирования"), 
    left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
    ),
  margin: margin
)
#place(image("../схемы/схема_модуля_анализирования.png"), center, dy: 12em)

