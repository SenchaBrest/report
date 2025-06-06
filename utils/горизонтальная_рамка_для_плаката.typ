#import "../utils/const.typ": *


#let рамка(название_плаката: "Название плаката") = {
  set page(
    paper: "a1",
    flipped: true,
    margin: (left: 4cm, right: 10mm, top: 10mm, bottom: 10mm)
  )
  set text(font: "Arial", size: 16pt, style: "italic")
  
  let штамп = table(
    align: (x, y) => (
      if y == 2 or x == 5 or (x > 4 and y !=3) { center + horizon}
      else {left  + horizon}
    ),
    stroke: (x, y) => (
      (
        top: if y == 0 or y == 2 or y == 3 or (y == 4 and x > 5) or (y == 5  and x > 5) {3pt},  
        bottom: 1pt,
        left: if x != 7 and x != 8 {3pt},
        right: 1pt
      )
    ),
    columns: (14mm, 20mm, 46mm, 30mm, 20mm, 140mm, 10mm, 10mm, 10mm, 34mm, 36mm),
    rows: 10mm,
    [], [], [], [], [], table.cell(rowspan:3, colspan:6, text(номер, size: 28pt)),
    [], [], [], [], [],
    [Изм. ], [Лист], [№ докум.], [Подп. ], [Дата],
    table.cell(colspan:2, [Разраб. ]), [#разработал], [], [], table.cell(rowspan:5, text(название_диплома + ".\n" +  название_плаката, size: 20pt)), table.cell(colspan:3, [Лит]), [Лист], [Листов],
    table.cell(colspan:2, [Пров.]), [#проверил], [], [], [Д], [], [], [1], [1],      
    table.cell(colspan:2, []), [], [], [], table.cell(colspan:5, rowspan:3, text(название_вуза, size: 24pt)),  
    table.cell(colspan:2, [Н. Контр.]), [#контроль], [], [],
    table.cell(colspan:2, [Утв.]), [#утвердил], [], [],  
  )
  
  table(
    columns: (140mm, 1fr, 370mm),
    rows: (28mm, 1fr, 80mm),
    align: center + horizon,
    stroke: (x, y) => (
      (
        top: if y == 0 {3pt},  
        bottom: if y == 2  or (y == 0 and x == 0) {3pt},
        left: if x == 0 {3pt},
        right: if x == 2 or (y == 0 and x == 0){3pt},
      )
    ),
    inset: 0pt,
    [#rotate(text(номер, size: 28pt), 180deg)], [], [],
    [], [], [],
    [], [], [#штамп],
  )
}