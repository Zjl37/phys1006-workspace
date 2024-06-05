#import "../utils.typ": *

#let (st1, st2, st3) = yaml("./data.yaml")

#let to-data-row(ln) = ln.split(regex("[,，;；]?\s+")).map(it => [ #it <table-data-content> ])

#let backslash-cell(it1, it2, height: 100%, inset: (x: 0.7em, y: 0.4em)) = table.cell(inset: 0pt)[
  #place(line(end: (100%, height)))
  #place(left+bottom, box(inset: inset, it1))
  #place(right+top, box(inset: inset, it2))
]

#let data-table(
  columns: auto,
  rows: auto,
  ..entries,
) = {
  set align(center)
  v(0.25em)

  table(
    columns: columns,
    rows: rows,
    ..entries,
  )
}

#let st1-table(..entries) = data-table(
  columns: (73pt, ..4*(50.5pt,)),
  rows: (1.75em, 2.0em),
  ..entries
)

#let st1-g1-table() = st1-table(
  backslash-cell($τ$, $C$),
  [0.022μF], [10μF], [100μF], [470μF],
  [时间常数τ], ..to-data-row(st1.group1.τ)
)

#let st1-g2-table() = st1-table(
  backslash-cell($τ$, $R$),
  [10Ω], [50Ω], [100Ω], [500Ω],
  [时间常数τ], ..to-data-row(st1.group2.τ)
)

#let st2-table(..entries) = data-table(
  columns: (83pt, ..3*(55pt,)),
  rows: (1.7em, 2.0em),
  ..entries
)

#let st2-g1-table() = st2-table(
  backslash-cell($τ$, $R$),
  [100Ω], [500Ω], [900Ω],
  [时间常数τ], ..to-data-row(st2.group1.τ)
)

#let st2-g2-table() = st2-table(
  backslash-cell($τ$, $L$),
  [10 mH], [50 mH], [100 mH],
  [时间常数τ], ..to-data-row(st2.group2.τ)
)

#let st3-table() = table(
  columns: (auto, ..9*(1fr, )),
  rows: 2.2em,
  [$n$], [0], [1], [2], [3], [4], [5], [6], [7], [8],
 //  [$U_(C (t_1+n T)) - E$],
  [$U_(C (t_1+n T))$],
  ..to-data-row(st3.at("UC(t1+nT)"))
)

#let uline(body: hide[永], width: 4em) = box(width: width, stroke: (bottom: black), outset: (bottom: 0.2em))[
  #body <blank-content>
]

