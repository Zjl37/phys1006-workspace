#import "./zh-font-config.typ": *
#import "@preview/cuti:0.2.1": fakebold

#let write-color = color.rgb("#2a284e")

#let write(it) = {
  set text(font: ZFC-writing, fill: write-color)
  set par(first-line-indent: 2em, justify: true)

  show math.equation: math.sans

  it
}

// 隐藏字形，但仍可被选中与复制；这与 hide 不同
#let hide-glyph(it) = text(fill: color.rgb("#0000"), it)

#let my-remark(it) = align(center, block(
  width: 100% - 8em,
  inset: 0.5em,
  breakable: true,
  radius: 0.5em,
  fill: rgb("#ffda0080"),
  align(left+top, it)
))

#let lorem_zh(n) = for i in range(n) {
  [我人有的和主产不为这工要在地一上是中国同经以发了民]
}

#let lorem_all() = [
  #lorem(50)
  This is some math: $a_b^c = sum_d^e f(g, h)$
  #lorem_zh(8) $$
]

#let report-meta(
  teacher-name,
  date,
  grade-preview,
  grade-total,
  pad-name: 0em,
  cover: it => it
) = text(size: 10.5pt, {
  import "./stu-info.typ": *

  let _ccell(it) = grid.cell(inset: (bottom: 2.5pt), write(cover(it)))

  set align(center)
  set grid.hline(stroke: 0.85pt)

  v(9.1pt)
  box(width: 39em, grid(
    columns: (auto, 1fr, auto, 1fr, 1em, auto, 1fr, auto, 1fr, 1em, auto, 1fr, auto, 1fr, 1em, auto, 6em),
    [*班级*], [], _ccell(stu-class), [], [],
    grid.hline(start: 1, end: 4),
    [*学号*], [], _ccell(stu-id), [], [],
    grid.hline(start: 6, end: 9),
    [*姓名*], [], _ccell({h(pad-name); stu-name; h(pad-name)}), [], [],
    grid.hline(start: 11, end: 14),
    [*教师签字*], _ccell(hide-glyph(teacher-name)),
    grid.hline(start: 16, end: 17),
  ))
  v(9.1pt)
  box(width: 39em, grid(
    columns: (auto, 1fr, auto, 1fr, 1em, auto, 4.5em, 1em, auto, 7em),
    [*实验日期*], [], _ccell(date), [], [],
    grid.hline(start: 1, end: 4),
    [*预习成绩*], _ccell(hide-glyph(grade-preview)), [],
    grid.hline(start: 6, end: 7),
    [*总成绩*], _ccell(hide-glyph(grade-total)),
    grid.hline(start: 9, end: 10),
  ))
  v(18.5pt)
  set block(spacing: 2.5pt)
  line(length: 100%, stroke: 0.7pt)
  line(length: 100%, stroke: 0.7pt)
})

#let teacher-signature-box(it) = {
  set table.cell(inset: (y: 8pt))
  align(right,
    table(
      columns: (78pt, 77.8pt),
      rows: (31.5pt, 31.7pt),
      align: center,
      fakebold(text(size: 14pt)[教师]),
      fakebold(text(size: 14pt)[姓名]),
      fakebold(text(font: ZFC--kai-zh, size: 16pt)[签字]),
      text(font: ZFC--kai-zh, size: 16pt, hide-glyph(it)),
    )
  )
}

#let absolute-place(label-name, dx: 0em, dy: 0em, content) = {
  [#metadata("absolute-place") #label("absolute-place--" + label-name)]
  style(styles => {
    let dx = measure(h(dx), styles).width
    let dy = measure(v(dy), styles).height
    context {
      let pos = query(label("absolute-place--" + label-name)).last().location().position()
      place(dx: -pos.x + dx, dy: -pos.y + dy, content)
    }
  })
}

