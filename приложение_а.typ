#import "utils/const.typ": *

#let номер = "ДП.ИИ21.210560-05\u{00a0}12\u{00a0}00" // переопределяем номер


#let rearrange-name(name) = {
  let parts = name.split(" ")
  parts.at(1) + " " + parts.at(0)
}

#set page(
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
)

#align(upper[*Приложение А*], right)
#linebreak()
#align(upper[Учреждение образования], center)
#align(upper["Брестский государственный технический университет"], center)
#linebreak()
#align([Кафедра "Интеллектуальных информационных технологий"], center)
#linebreak() #linebreak() #linebreak()
#align(upper[#название_диплома], center)
#linebreak()
#align(upper[Текст программы], center)
#align([(на оптическом носителе CD-R)], center)
#linebreak()
#align([*#номер*], center)
#linebreak()
#align([Листов #context counter(page).final().first()], center)
#align([Объем 92 Кбайт], center)
#linebreak() #linebreak() #linebreak()
#align(
  table(
    columns: 2,
    [Руководитель], [#rearrange-name(проверил)],
    [Выполнил], [#rearrange-name(разработал)],
    [Консультант \ по ЕСПД #h(1.3em)], [#align(rearrange-name(контроль), bottom)],
  ),
  right
)
#align(год, center + bottom)
#pagebreak()

#set page(
  header: context [
    #align([#h(1fr) #номер #h(1fr) #str(counter(page).get().first())], center)
  ],
)

#set par(
  leading: межстрочный_интервал,
  first-line-indent: (
    amount: абзац,
    all: true,
  ),
  justify: true,
)

#upper[*Аннотация*]
#linebreak()
#linebreak()

Программное обеспечение предназначено для планирования и прогнозирования интенсивности движения. Система разработана при помощи среды разработки Visual Studio Code, под управлением операционной системы Windows 11. Реализация и испытания серверной части были проведены на языке программирования Python с использованием библиотек: NumPy, Pandas, Deap, Matplotlib, FastAPI. Реализация и испытание модуля графического интерфейса были проведены на языке программирования JavaScript.

#pagebreak()

#upper[*Содержание*]
#linebreak()
#linebreak()
+ alg/preprocess.py – файл, содержащий функции предварительной обработки данных.
+ alg/alg.py – файл, реализующий генетический алгоритм обработки .
+ alg/postprocess.py – файл, содержащий функции постобработки результатов работы алгоритма.
+ alg/out.py – файл, отвечающий за вывод результатов обработки.
+ app/main.py – основной файл приложения, реализующий запуск веб-сервера и связывающий логику backend с пользовательским интерфейсом.
+ static/css/styles.css – файл, содержащий стили CSS для оформления клиентского веб-интерфейса.
+ static/js/script.js – файл, содержащий JavaScript-код для обработки действий пользователя на клиентской стороне.
+ templates/index.html – HTML-шаблон основной веб-страницы, отображаемой пользователю.
+ dockerfile – файл, содержащий инструкции для сборки docker-образа приложения.
+ readme.txt – файл с описанием проекта, инструкциями по установке и использованию.
+ requiremets.txt – файл, содержащий список зависимостей, необходимых для запуска проекта.
#pagebreak()
