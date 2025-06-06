// #import "const.typ": *
// #import "вертикальная_рамка_для_плаката.typ": рамка

// #let margin = (left: 2cm, right: 5mm, top: 5mm, bottom: 5mm)

// #set page(
//   paper: "a4",
//   background: pad(
//     рамка(название_плаката: "Пояснительная записка"), 
//     left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
//   ),
//   margin: margin
// )
// 
#import "const.typ": *
#import "вертикальная_рамка_для_плаката.typ": рамка

#let margin = (left: 2cm, right: 5mm, top: 5mm, bottom: 5mm)

#set page(
  paper: "a4",
  background: pad(
    рамка(доп_название: "Пояснительная записка"), 
    left: margin.left, right: margin.right, top: margin.top, bottom: margin.bottom
  ),
  margin: margin
)