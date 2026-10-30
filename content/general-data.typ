#import "../template/template.typ": spds-frame
#import "../template/tables-spds.typ": form3,form5,form6

#set text(font: "ISOCPEUR")
#set par(first-line-indent: 1.5em, justify: true)
#set par(spacing: 1em)

#set page(paper:"a3",
flipped:true,
columns:2)

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Общие данные",format:"A3")
#include("../content/drawing-list.typ")

#include("../content/reference-docs.typ")

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

