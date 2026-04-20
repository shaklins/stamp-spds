#import "data_stamp.typ": stamp-data
#import "frame.typ": document-frame

#set page(
  paper:"a4",
  margin:(
    top:20mm,
    bottom:20mm,
    right:15mm,
    left: 30mm
  )
)
#set text(size:10pt)

#place(
  left + top,
  dy: -5mm,
  image("logo.jpg",height:10mm)
)

#place(
  right + top,
)[#stamp-data.company
]
#set align(center)
#v(45mm)

#stamp-data.adres
#v(30mm)

= Рабочая документация
#v(15mm)

#stamp-data.chapter
#v(20mm)

= #stamp-data.project-name

#place(center + bottom)[2026г.]

#pagebreak()

#set page(background: document-frame)
#place(
  left + top,
  dy: -5mm,
  image("logo.jpg",height:10mm)
)

#place(
  right + top,
)[#stamp-data.company
]
#set align(center)
#v(45mm)

#stamp-data.adres
#v(30mm)

= Рабочая документация
#v(15mm)

#stamp-data.chapter
#v(20mm)

= #stamp-data.project-name

#place(center + bottom)[2026г.]

