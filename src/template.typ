#import "place.typ": place-table
#import "tables-spds.typ" as spds-tables
#import "frame.typ": document-frame


#let spds-frame(format-table:"Форма 3", name-paper:"",format:"A4", end-label:none, body) = context {
  let forms = (
    "Форма 3" : spds-tables.form3,
    "Форма 4" : spds-tables.form4,
    "Форма 5" : spds-tables.form5,
  )
  let table-type = forms.at(format-table)(
      name-paper: name-paper, 
      format: format, 
      end-label: end-label
    )
  let table-form6 = spds-tables.form6(format:format)

  let table-height = measure(table-type).height
  set page(
      margin: (
        left: 30mm,
        right: 10mm,
        top : 20mm,
        bottom: 20mm + table-height,
      ),
      background: document-frame
    )
    place-table(table-type, table-form6,  body)
}
