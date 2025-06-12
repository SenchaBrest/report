#import "const.typ": *
#import "вертикальная_рамка.typ": рамка

#let margin = (left: 2cm, right: 5mm, top: 5mm, bottom: 5mm)

#let frame-settings = context {
  if(counter(page).get().first() != номер_первой_страницы) {
    pad(
      рамка(доп_название: "Пояснительная записка", type: "малая"), 
      left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
    )
  } else {
    pad(
      рамка(доп_название: "Пояснительная записка", сколько_страниц_убрать: 1), 
      left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
    )
  }
}