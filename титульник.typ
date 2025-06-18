#import "utils/const.typ": *

#let rearrange-name(name) = {
  let parts = name.split(" ")
  parts.at(1) + " " + parts.at(0)
}

#set page(
  paper: "a4",
  background: pad(rect(width: 100%, height: 100%, stroke: 2pt, inset: 0pt), top: 5mm, bottom: 5mm, left: 2cm, right: 5mm),
  margin: (top: верх, bottom: низ, left: лево, right: право),
)

#set text(
  lang: "ru",
  font: "Times New Roman",
  size: размер_шрифта,
)

#set table(
  stroke: (x, y) =>  {
    (bottom: 0pt + white)
  },
  row-gutter: межстрочный_интервал,
  column-gutter: 15em,
  align: (x, y) => (
    if x == 0 { right }
    else { left }
  ),
  inset: 4pt
)

#align(upper[Министерство образования республики Беларусь], center)
#align(upper[Учреждение образования], center)
#align(upper["Брестский государственный технический университет"], center)
#linebreak()
#align([Кафедра "Интеллектуальных информационных технологий"], center)
#linebreak() 
#align([#h(10em)«К защите допускаю»], center)
#align([#h(11em)Заведующий кафедрой], center)
#align([#h(15em)\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ В.А. Головко], center)
#align([#h(13em)"\_\_\_\_"\_\_\_\_\_\_\_\_\_\_\_\_ 2025 г.], center)
#linebreak()
#align(upper[#название_диплома], center)
#linebreak()
#align(upper[Пояснительная записка к дипломному проекту], center)
#linebreak()
#align([*#номер*], center)
#linebreak()
#align([Листов \_\_], center)
#linebreak() 

#align(
  table(
    columns: 2,
    [Руководитель], [#rearrange-name(проверил)],
    [Выполнил], [#rearrange-name(разработал)],
    [Консультанты:], [],
    [по экономическому разделу], [#rearrange-name(экономический_раздел)],
    [по ЕСПД], [#rearrange-name(контроль)],
    [Рецензент], [\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_], // #рецензент
  ), 
  right
)

#align(год, center + bottom)
