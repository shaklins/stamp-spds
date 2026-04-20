#import "tables-spds.typ" as spds-tables

#let place-table(table-type, table-form6, body) = {
  set page(
    footer: context{
      let is-flipped = page.flipped
      let base-side = if is-flipped { page.height } else { page.width }
      let page-num = counter(page).get().first()

      let table-render = if page-num == 1 {
        table-type
      } else {
        table-form6
      }

      place(
        left + bottom,
        dx: -10mm + base-side - 20mm - 185mm - 5mm, // Для корректного размещения на всех форматах
        dy: -5mm,
        table-render
      )
    },
    footer-descent: 0pt,
  )
  body
}
