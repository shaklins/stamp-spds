#import "../template/template.typ": spds-frame
#import "../template/tables-spds.typ": form3,form5,form6

#set text(font: "ISOCPEUR")
#set par(first-line-indent: 1.5em, justify: true)
#set par(spacing: 1em)

#set page(paper:"a3", flipped:true)

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Пояснительная записка",format:"A3")

#let spec(..rows) = {
  table(
    columns: (20mm,130mm,60mm,35mm,45mm,20mm,20mm,25mm,40mm),
    align: (x,y) => {
      if x == 1 and y >0 {left + horizon} else {center + horizon}
    },
    stroke: 0.5pt,
    // Заголовок таблицы (Шапка)
    table.header(
      [Поз.],[Наименование и техническая характеристика],[Тип, марка, обозначение документа, опросного листа],
      [Код продукции],[Поставщик],[Ед. изм.],[Кол-во],[Масса 1 ед., кг],[Примечание]
    ),
    // Пример наполнения
    ..rows
  )
}

#pad(left: -10mm, top: -15mm)[
  #spec(
    ..([1],[name],[type],[code],[manuf],[ed],[5],[weight],[comment],)*90
  )
]
