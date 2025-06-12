#import "../utils/вертикальная_рамка.typ": рамка

#let margin = (left: 4cm, right: 10mm, top: 10mm, bottom: 10mm)

#set page(
  paper: "a1",
  background: pad(
    рамка(доп_название: "Схема работы системы"), 
    left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
  ),
  margin: margin
)
#place(image("../схемы/схема_работы_системы.png"), center, dy: 6em)

