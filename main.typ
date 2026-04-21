#import "template/template.typ": spds-frame
#import "template/tables-spds.typ": form3,form5,form6

#set text(font: "ISOCPEUR")
#set par(first-line-indent: 1.5em, justify: true)
#set par(spacing: 1em)

#include("content/front_page_cover.typ")

#set page(paper:"a4")

#pagebreak()

#counter(page).update(1)

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Общие данные",format:"A4", end-label:<end-sec-1>)
#include("content/sheet_draw.typ")
#pagebreak()

#include("content/sheet_link_doc.typ")

#pagebreak()
#align(center)[= Общие указания]

#lorem(0)

#lorem(100)

#lorem(100)

#rect(inset:(top:10mm,bottom:10mm))[
  #lorem(70)

  #lorem(15)
]

<end-sec-1>

#pagebreak()

#counter(page).update(1)

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Пояснительная записка",format:"A4", end-label:<end-sec-2>)
#align(center)[= Пояснительная записка]

+ Общие данные

  #lorem(60)

+ Характеристики объекта

  #lorem(300)

+ Техника безопасности и охрана труда

  #lorem(450)

  <end-sec-2>

#pagebreak()
#counter(page).update(1)

#set page(paper:"a3", flipped: true)
#show: spds-frame.with(format-table:"Форма 3", name-paper:"Кабельный журнал",format:"A3", end-label:<end-sec-3>)
= A3 SPDS Form 3

#lorem(100)

<end-sec-3>

#pagebreak()
#counter(page).update(1)

#show: spds-frame.with(format-table:"Форма 3", name-paper:"Спецификация",format:"A3", end-label:<end-sec-4>)
= A3 SPDS Form 6

#lorem(100)
#pagebreak()

<end-sec-4>
