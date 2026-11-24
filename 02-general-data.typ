#import "template/template.typ": spds-frame

#set text(font: "ISOCPEUR")
#set par(first-line-indent: 1.5em, justify: true)
#set par(spacing: 1em)

#set page(paper:"a4")

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Общие данные",format:"A3")

// Ведомость рабочих чертежей основного комплекта
#let drawing-list-rows = csv("data/drawing-list.csv", row-type: array).slice(1)

#align(center)[= Ведомость рабочих чертежей основного комплекта]
#pad(left: -10mm)[
  #show table.cell.where(y: 0): set align(center)
  #table(
    columns: (45mm, 100mm, 40mm),
    align: horizon,
    rows: (8mm),
    [Обозначение], [Наименование], [Примечание],
    ..drawing-list-rows.flatten()
  )
]

// Ведомость ссылочных и прилагаемых документов
#let reference-docs-rows = csv("data/reference-docs.csv", row-type: array).slice(1)

#align(center)[= Ведомость ссылочных и прилагаемых документов]
#pad(left: -10mm)[
  #show table.cell.where(y: 0): set align(center)
  #table(
    columns: (45mm, 100mm, 40mm),
    align: horizon,
    rows: (8mm),
    [Обозначение], [Наименование], [Примечание],
    ..reference-docs-rows.flatten()
  )
]

#align(center)[= Общие указания]

#lorem(0)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)

#rect(inset:(top:10mm,bottom:10mm))[
  #lorem(70)

  #lorem(15)
]

