#import "../utils.typ": *

#let (st1, st2, st3, st4, st5) = yaml("./data/data.yaml")

#let to-data-row(ln) = ln.split(regex("[,，;；]?\s+")).map(it => [ #it <table-data-content> ])

#let data-table(
  caption: [],
  n: 10,
  ..entries,
) = {
  set text(size: 9pt)
  set align(center)
  set table.cell(align: horizon)

  caption

  v(0.3em)

  table(
    columns: (1fr, ..n*(1fr,)),
    [次数], ..range(1, 1+n).map(str),
    ..entries
  )
}

#let blank(body) = box(outset: (bottom: 0.15em), stroke: (bottom: 0.05em))[
  #body <blank-content>
]

#let st1-table() = data-table(
  caption: [
    极值法（驻波法）测空气中声速，温度 $t = #blank(st1.t) ℃$，频率 $f = #blank(st1.f) "kHz"$
  ],
  [$l_i ("mm")$], ..to-data-row(st1.l_i),
)

#let st2-table() = data-table(
  caption: [
    相位比较法测空气中声速，温度 $ t = #blank(st2.t) ℃$，频率 $f = #blank(st2.f) "kHz"$
  ],
  [$l_i ("mm")$], ..to-data-row(st2.l_i),
)

#let fakebold(stroke: 0.3pt, it) = text(stroke: stroke, it)

#let st3-table(enable: true) = {
  show selector(<blank-content>).or(<table-data-content>): if enable { it => it } else { hide }

  data-table(
    caption: [
      #fakebold[（选做）]波形移动法测空气中声速，温度 $t = #blank(st3.t) ℃$，频率 $f = #blank(st3.f) "kHz"$
    ],
    [$l_i ("mm")$], ..to-data-row(st3.l_i),
  )
}

#let st4-table() = data-table(
  caption: [
    时差法测空气中声速，温度 $t = #blank(st4.t) ℃$
  ],
  [$l_i ("mm")$], ..to-data-row(st4.l_i),
  [$t_i ("µs")$], ..to-data-row(st4.t_i),
)

#let st5-table(enable: true) = {
  show selector(<blank-content>).or(<table-data-content>): if enable { it => it } else { hide }

  data-table(
    caption: [
      #fakebold[（选做）]时差法测固体中声速，温度 $t = #blank(st5.t) ℃$
    ],
    n: 6,
    [材质], ..to-data-row(st5.材质),
    [$l_i ("mm")$], ..to-data-row(st5.l_i),
    [$t_i ("µs")$], ..to-data-row(st5.t_i)
  )
}
