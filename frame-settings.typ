#import "const.typ": *


#let tiny_text(текст, выравнивание) = align(text(текст, size: размер_шрифта_для_очень_мелких_подписей), выравнивание)
#let small_text(текст, выравнивание) = align(text(текст, size: размер_шрифта_для_мелких_подписей), выравнивание)
#let medium_text(текст, выравнивание) = align(text(текст, size: размер_шрифта_для_средних_подписей), выравнивание)
#let big_text(текст, выравнивание) = align(text(текст, size: размер_шрифта_для_больших_подписей), выравнивание)


#let frame-settings = context {
  if(counter(page).get().first() != 4) {
    image("/report/assets/borders/frame-small.png", width: 100%)

    place(left, dx: 57pt, dy: -34pt, box(width: 7mm, height: 5mm, inset: 3pt, tiny_text("Изм.", left)))
    place(left, dx: 77pt, dy: -34pt, box(width: 10mm, height: 5mm, inset: 3pt, tiny_text("Лист", center)))
    place(left, dx: 105pt, dy: -34pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text("№ докум.", center)))
    place(left, dx: 170pt, dy: -34pt, box(width: 15mm, height: 5mm, inset: 3pt, tiny_text("Подпись", center)))
    place(left, dx: 213pt, dy: -34pt, box(width: 10mm, height: 5mm, inset: 3pt, tiny_text("Дата", center)))

    place(right, dx: -43pt, dy: -62pt, box(width: 110mm, height: 15mm, big_text(номер, center)))

    place(right, dx: -20pt, dy: -62pt, box(width: 10mm, height: 5mm, small_text("Лист", center)))

    place(right, dx: -20pt, dy: -47pt, box(width: 10mm, height: 10mm, medium_text(str(counter(page).get().first()), center)))
  } else {
    image("/report/assets/borders/frame-big.png", width: 100%)

    place(left, dx: 57pt, dy: -104pt, box(width: 7mm, height: 5mm, inset: 3pt, tiny_text("Изм.", left)))
    place(left, dx: 77pt, dy: -104pt, box(width: 10mm, height: 5mm, inset: 3pt, tiny_text("Лист", center)))
    place(left, dx: 105pt, dy: -104pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text("№ докум.", center)))
    place(left, dx: 170pt, dy: -104pt, box(width: 15mm, height: 5mm, inset: 3pt, tiny_text("Подпись", center)))
    place(left, dx: 213pt, dy: -104pt, box(width: 10mm, height: 5mm, inset: 3pt, tiny_text("Дата", center)))

    place(left, dx: 57pt, dy: -90pt, box(width: 17mm, height: 5mm, inset: 3pt, tiny_text("Разработал", left)))
    place(left, dx: 57pt, dy: -76pt, box(width: 17mm, height: 5mm, inset: 3pt, tiny_text("Проверил", left)))
    place(left, dx: 57pt, dy: -47pt, box(width: 17mm, height: 5mm, inset: 3pt, tiny_text("Н. Контр.", left)))
    place(left, dx: 57pt, dy: -35pt, box(width: 17mm, height: 5mm, inset: 3pt, tiny_text("Утвердил", left)))

    place(left, dx: 105pt, dy: -90pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text(разработал, left)))
    place(left, dx: 105pt, dy: -76pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text(проверил, left)))
    place(left, dx: 105pt, dy: -47pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text(контроль, left)))
    place(left, dx: 105pt, dy: -35pt, box(width: 23mm, height: 5mm, inset: 3pt, tiny_text(утвердил, left)))

    place(right, dx: -20pt, dy: -133pt, box(width: 118mm, height: 15mm, big_text(номер, center)))
    place(right, dx: -155pt, dy: -90pt, box(width: 70mm, height: 25mm, inset: 10pt, small_text(название_диплома, center)))

    place(right, dx: -113pt, dy: -90pt, box(width: 15mm, height: 5mm, small_text("Стадия", center)))
    place(right, dx: -71pt, dy: -90pt, box(width: 15mm, height: 5mm, small_text("Лист", center)))
    place(right, dx: -20pt, dy: -90pt, box(width: 18mm, height: 5mm, small_text("Листов", center)))

    place(right, dx: -113pt, dy: -76pt, box(width: 15mm, height: 5mm, small_text("ДП", center)))
    place(right, dx: -71pt, dy: -76pt, box(width: 15mm, height: 5mm, small_text(str(counter(page).get().first()), center)))
    place(right, dx: -20pt, dy: -76pt, box(width: 18mm, height: 5mm, small_text(str(counter(page).final().first()), center)))

    place(right, dx: -20pt, dy: -61pt, box(width: 48mm, height: 14mm, medium_text(название_вуза, center)))
  }
}
