#let rows = csv("../data/reference-docs.csv", row-type: array).slice(1)

#align(center)[= Ведомость ссылочных и прилагаемых документов]
#pad(left: -10mm)[
#show table.cell.where(y: 0): set align(center)
#table(
  columns: (45mm,100mm,40mm),
  align: horizon,
  rows: (8mm),
  [Обозначение],[Наименование],[Примечание],
  ..rows.flatten()
  )
]
