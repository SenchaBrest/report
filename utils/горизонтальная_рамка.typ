#import "../utils/const.typ": *


#let рамка(название_плаката: "Название плаката") = {
  let x = 1

  set page(
    paper: "a1",
    flipped: true,
    margin: (left: 4cm, right: 10mm, top: 10mm, bottom: 10mm)
  )
  set text(font: "Arial", size: 8pt * x, style: "italic")
  
  let штамп = table(
    align: (x, y) => (
      if y < 3 or x > 4 { center + horizon}
      else {left  + horizon}
    ),
    stroke: (x, y) => (
      (
        top: if y == 0 or y == 2 or y == 3 or (y == 4 and x > 5) or (y == 5  and x > 5) {2pt},  
        bottom: 1pt,
        left: if x != 7 and x != 8 {2pt},
        right: 1pt
      )
    ),
    inset: (x, y) => (
      if y == 2 or x == 5 or (x > 4 and y !=3) {0pt}
      else {3pt}
    ),
    columns: (7mm * x, 10mm * x, 23mm * x, 15mm * x, 10mm * x, 70mm * x, 5mm * x, 5mm * x, 5mm * x, 17mm * x, 18mm * x),
    rows: 5mm * x,
    [], [], [], [], [], table.cell(rowspan:3, colspan:6, text(номер, size: 14pt * x)),
    [], [], [], [], [],
    [Изм. ], [Лист], [№ докум.], [Подп. ], [Дата],
      
    table.cell(colspan:2, [Разраб. ]), [#разработал], [], [], table.cell(rowspan:5, text(название_диплома + ".\n" +  название_плаката, size: 10pt * x)), table.cell(colspan:3, [Лит]), [Лист], [Листов],
    table.cell(colspan:2, [Пров.]), [#проверил], [], [], [Д], [], [], [1], [1],      
    table.cell(colspan:2, []), [], [], [], table.cell(colspan:5, rowspan:3, text(название_вуза, size: 12pt * x)),  
    table.cell(colspan:2, [Н. Контр.]), [#контроль], [], [],
    table.cell(colspan:2, [Утв.]), [#утвердил], [], [],  
  )
  
  table(
    columns: (70mm * x, 1fr, 185mm * x),
    rows: (14mm * x, 1fr, 40mm * x),
    align: center + horizon,
    stroke: (x, y) => (
      (
        top: if y == 0 {2pt},  
        bottom: if y == 2 {3pt}, // если нужен номер сверху if y == 2  or (y == 0 and x == 0) {2pt},
        left: if x == 0 {2pt},
        right: if x == 2 {2pt}, // если нужен номер сверху if x == 2 or (y == 0 and x == 0){2pt},
      )
    ),
    inset: 0pt,
    [], [], [], // [#rotate(text(номер, size: 14pt * x), 180deg)], [], [], 
    [], [], [],
    [], [], [#штамп],
  )
}