#import "../utils.typ": *

#let hide-column(cols: (0, 2, 3, 4, 5), data: ((0))) = {
  data.map(row => {
    row.enumerate().map(cell => {
      let (col, it) = cell
      if cols.contains(col) {
        text(fill: color.rgb("#0000"), [#it])
      } else {
        [#it]
      }
    })
  })
}

#let st1-table(csv-file, row-height: 2.5em, add-blank-rows: 0, hidden-cols: (0, 2, 3, 4, 5)) = {
  set text(size: 9pt)
  set table.cell(inset: (y: 0.8em))

  let data = csv(csv-file).slice(1)

  table(
    columns: (auto,)*6+(1fr,),
    rows: (auto, auto, row-height),
    align: center+horizon,
    table.header(

      table.cell(rowspan: 2)[$I_M "（A）"$],
      table.cell(rowspan: 2)[$B "（mT）"$],
      [$V_1 "（mV）"$],
      [$V_2 "（mV）"$],
      [$V_3 "（mV）"$],
      [$V_4 "（mV）"$],
      table.cell(rowspan: 2)[$ V_H = (V_1 - V_2 + V_3 - V_4)/4 "（mV）" $],
      [$+I_M,+I_S$],
      [$-I_M,+I_S$],
      [$-I_M,-I_S$],
      [$+I_M,-I_S$],
    ),
    ..hide-column(cols: hidden-cols, data: data).flatten(),
    ..(hide[0],)*7*add-blank-rows,
  )
}

#let st2-table(csv-file, row-height: 2.5em, add-blank-rows: 0, hidden-cols: (0, 1, 2, 3, 4)) = {
  set text(size: 9pt)
  set table.cell(inset: (y: 0.8em))

  let data = csv(csv-file).slice(1)

  table(
    columns: (1fr,)+(auto,)*4+(2fr,),
    rows: (auto, auto, row-height),
    align: center+horizon,
    table.header(
      table.cell(rowspan: 2)[$I_S "（mA）"$],
      [$V_1 "（mV）"$],
      [$V_2 "（mV）"$],
      [$V_3 "（mV）"$],
      [$V_4 "（mV）"$],
      table.cell(rowspan: 2)[$ V_H = (V_1 - V_2 + V_3 - V_4)/4 "（mV）" $],
      [$+I_M,+I_S$],
      [$-I_M,+I_S$],
      [$-I_M,-I_S$],
      [$+I_M,-I_S$],
    ),
    ..hide-column(cols: hidden-cols, data: data).flatten(),
    ..(hide[0],)*6*add-blank-rows,
  )
}

#let st3-table(csv-file, row-height: 2.5em, add-blank-rows: 0, hidden-cols: (0, 1, 2, 3, 4)) = {
  set text(size: 9pt)
  set table.cell(inset: (y: 0.81em))

  let data = csv(csv-file).slice(1)

  table(
    columns: (auto,)*5+(3fr, 1fr),
    rows: (auto, auto, row-height),
    align: center+horizon,
    table.header(

      table.cell(rowspan: 2)[$x "(mm)"$],
      [$V_1 "（mV）"$],
      [$V_2 "（mV）"$],
      [$V_3 "（mV）"$],
      [$V_4 "（mV）"$],
      table.cell(rowspan: 2)[$ V_H = (V_1 - V_2 + V_3 - V_4)/4 "（mV）" $],
      table.cell(rowspan: 2)[$ B "(mT)" $],
      [$+I_M,+I_S$],
      [$-I_M,+I_S$],
      [$-I_M,-I_S$],
      [$+I_M,-I_S$],
    ),
    ..hide-column(cols: hidden-cols, data: data).flatten(),
    ..(hide[0],)*7*add-blank-rows,
  )
}

#let two-cols-data(data) = {
  // ((a b c)     ((a b c j k l)
  //  (d e f)  =>  (d e f m n o)
  //  (g h i)      (g h i      ))
  //  (j k l)
  //  (m n o))
  if calc.odd(data.len()) {
    data.push(())
  }
  let mid = int(data.len()/2)
  data.slice(0, mid).zip(data.slice(mid)).map(it => it.flatten())
}

#let st4-table(csv-file, row-height: 2.15em, add-blank-rows: 0, hidden-cols: (2, 5)) = {
  // set text(size: 9pt)
  set table.cell(inset: (y: 0.64em))

  let data = csv(csv-file).slice(1)

  table(
    columns: (1fr,)*6,
    rows: row-height,
    align: center+horizon,
    table.header(
      [$I_M "(mA)"$],
      [$B "(Gs)"$],
      [$V_"out" "(mV)"$],
      [$I_M "(mA)"$],
      [$B "(Gs)"$],
      [$V_"out" "(mV)"$],
    ),
    ..hide-column(cols: hidden-cols, data: two-cols-data(data)).flatten(),
  )
}

#let st5-table(csv-file, row-height: 2.1em) = {
  set table.cell(inset: (y: 0.70em))

  let data = csv(csv-file).slice(1)
  let mid = int((data.len() + 1)/2)
  let row1-data = data.slice(0, mid)
  let row2-data = data.slice(mid)
  if calc.odd(data.len()) {
    row2-data.push(([], []))
  }

  table(
    columns: (auto,)+(1fr,)*10,
    rows: row-height,
    align: center+horizon,
    $θ "（°）"$,
    ..row1-data.map(it => it.at(0)),
    $V_"out" "（mV）"$,
    ..row1-data.map(it => hide-glyph(text(size: 9pt, it.at(1)))),
    $θ "（°）"$,
    ..row2-data.map(it => it.at(0)),
    $V_"out" "（mV）"$,
    ..row2-data.map(it => hide-glyph(text(size: 9pt, it.at(1)))),
  )
}
