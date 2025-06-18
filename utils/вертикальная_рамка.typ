#import "../utils/const.typ": *

#let рамка(номер: "", доп_название: "", x: 1, type: "большая", сколько_страниц_убрать: 0) = context {
  set text(font: "Arial", size: 8pt * x, style: "italic")
 
  let штамп_большой = table(
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
      
    table.cell(colspan:2, [Разраб. ]), [#разработал], [], [], table.cell(rowspan:5, text(название_диплома + ".\n" +  доп_название, size: 10pt * x)), table.cell(colspan:3, [Лит]), [Лист], [Листов],
    table.cell(colspan:2, [Пров.]), [#проверил], [], [], [Д], [], [], [#str(counter(page).get().first())], [#str(counter(page).final().first() - сколько_страниц_убрать)],      
    table.cell(colspan:2, []), [], [], [], table.cell(colspan:5, rowspan:3, text(название_вуза, size: 12pt * x)),  
    table.cell(colspan:2, [Н. Контр.]), [#контроль], [], [],
    table.cell(colspan:2, [Утв.]), [#утвердил], [], [],  
  )

   let штамп_малый = table(
    align: (x, y) => (
      if y == 2 or x == 5 or (x > 4 and y !=3) { center + horizon}
      else {left  + horizon}
    ),
    stroke: (x, y) => (
      (
        top: if y == 0 or y == 2 or (y == 1 and x > 5) {2pt},  
        bottom: 1pt,
        left: if x > 0 {2pt},
        right: 1pt
      )
    ),
    columns: (7mm * x, 10mm * x, 23mm * x, 15mm * x, 10mm * x, 110mm * x, 10mm * x),
    rows: 5mm * x,
    [], [], [], [], [], table.cell(rowspan: 3, text(номер, size: 14pt * x)), [Лист],
    [], [], [], [], [], table.cell(rowspan:2 , text(str(counter(page).get().first()), size: 14pt * x)),
    [Изм. ], [Лист], [№ докум.], [Подп. ], [Дата]
  )
 
  table(
    columns: (1fr, 171mm * x, 14mm * x),
    rows: (70mm * x, 1fr, (if type == "большая" {40mm} else {15mm}) * x),
    align: center + horizon,
    stroke: (x, y) => (
      (
        top: if y == 0  {2pt},  
        bottom: if y == 2 {2pt}, // если нужен номер сверху if y == 2 or (y == 0 and x == 2) {2pt},
        left: if x == 0 {2pt}, // если нужен номер сверху if x == 0 or (y == 0 and x == 2) {2pt},
        right: if x == 2 or (y == 2 and x == 1) {2pt},
      )
    ),
    inset: 0pt,
    [], [], [], // если нужен номер сверху [], [], [#rotate(text(номер, size: 14pt * x), 90deg)],
    [], [], [],  
    [], table.cell(colspan:2, [#if type == "большая" {штамп_большой} else {штамп_малый}]), 
  )
}