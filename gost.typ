#import "frame-settings.typ": frame-settings
#import "const.typ": *


#let gost(doc) = {
  counter(page).update(номер_первой_страницы)


  set page(
    background: frame-settings,
    margin: (top: верх, bottom: низ, left: лево, right: право),
  )


  set text(
    lang: "ru",
    font: "Times New Roman",
    size: размер_шрифта,
  )


  show ref.where(form: "normal"): set ref(supplement: it => {})


  show figure.where(
    kind: image
  ): set figure(
    numbering: n => {
      numbering("1.1", counter(heading).get().first(), n)
    },
    supplement: "Рисунок",
    gap: отступ_для_подписей_изображений,
  )
  show figure.where(
    kind: table
  ): set figure(
    numbering: n => {
      numbering("1.1", counter(heading).get().first(), n)
    },
    supplement: "Таблица",
    gap: отступ_для_подписей_таблиц,
  )
  set figure.caption(separator: [ --- ])
  set math.equation(
    numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
    },
    supplement: []
  )


  set heading(numbering: "1.")
  show heading: set block(above: верт_отступ_до_заголовков, below: верт_отступ_после_заголовков)
  show heading: it => [
    #if it.level == 1 {
      counter(figure.where(kind: image)).update(0)
      counter(figure.where(kind: table)).update(0)
      counter(math.equation).update(0)

      set text(размер_шрифта_заголовков)

      if it.outlined == true {
        pagebreak()
        pad(x: гор_отступ_заголовков, upper(it))
      }
      else { // содержание - отдельный случай
        pad(upper(it))
      }
    } else {
      set text(размер_шрифта_подзаголовков)

      pad(x: гор_отступ_заголовков + (гор_доп_отступ_подзаголовков * (it.level - 1)), it)
    }
  ]


  set par(
    leading: межстрочный_интервал,
    first-line-indent: (
      amount: абзац,
      all: true,
    ),
    justify: true,
  )


  set list(indent: абзац, marker: ([•], [--]))
  set enum(indent: абзац) // предпочтительно во вложенных списках использовать маркированные списки


  set outline(title: "Содержание", indent: 0pt)
  show outline.entry: it => {
    set text(размер_шрифта_содержания, weight: "bold")
    if it.level == 1 {
      upper(it)
    } else {
      it
    }
  }


  set bibliography(title: "Список использованных источников", style: "gost-r-7-0-5-2008-numeric.csl")


  doc
}


#let numless(it) = {set heading(numbering: none); it }
