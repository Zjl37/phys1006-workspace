#import "../utils.typ": *

#let data-table(csv-file, row-height: auto) = {
  set text(size: 9pt)
  set table.cell(inset: (y: 0.5em))

  let data = csv(csv-file).slice(1)

  table(
    columns: (auto,)*3,
    rows: (auto, auto, row-height),
    align: center+horizon,
    table.header(
      [$U_(G_2 K) "（V）"$],
      [
        $I_P "（nA）"$
        
        \[第一组\]
      ],
      [
        $I_P "（nA）"$

        \[第二组\]
      ],
    ),
    ..data.flatten(),
  )
}
