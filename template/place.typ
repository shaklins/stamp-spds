// Насколько таблица первого листа (формы 3, 4, 5) поднимается над нижним краем.
// На эту же величину освобождается место снизу, иначе текст наедет на таблицу.
#let first-page-table-offset = 30mm

#let place-table(table-type, table-form6, body) = {
  set page(
    footer: context{
      let is-flipped = page.flipped
      let base-side = if is-flipped { page.height } else { page.width }
      let page-num = counter(page).get().first()

      let (table-render, offset-y) = if page-num == 1 {
        (table-type, -first-page-table-offset)
      } else {
        (table-form6, 0mm)
      }

      place(
        left + bottom,
        dx: -10mm + base-side - 20mm - 185mm - 5mm, // Для корректного размещения на всех форматах
        dy: offset-y,
        table-render
      )
    },
    footer-descent: 0pt,
  )

  // Освобождаем место под таблицу первого листа (действует только на первую страницу).
  place(bottom, float: true, clearance: 0pt, v(first-page-table-offset+5mm))

  body
}
