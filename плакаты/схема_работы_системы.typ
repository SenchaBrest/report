#import "../utils/вертикальная_рамка.typ": рамка

#let номер = "ДП.ИИ21.210560-05\u{00a0}90\u{00a0}00" // переопределяем номер

#let margin = (left: 2cm, right: 5mm, top: 5mm, bottom: 5mm)

#set page(
  paper: "a1",
  background: pad(
    рамка(номер: номер, доп_название: "Схема работы системы"), 
    left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
  ),
  margin: margin
)
#place(image("../схемы/схема_работы_системы.png"), center, dy: 6em)

