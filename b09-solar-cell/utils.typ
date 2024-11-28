#import "@preview/spreet:0.1.0"
#import "../utils.typ": *

#let data = spreet.decode(read("data.xlsx", encoding: none))

#let strfy(it) = if(it == none) { "" } else { it }

#let st1 = data.at("st1-太阳能电池的暗伏安特性测量").filter(
  row => row.any(i => i != none)
).map(row => row.map(strfy))
#let st2 = data.at("st2-开路电压、短路电流与光强关系测量")
#let st3 = data.at("st3-太阳能电池输出特性测试")

#let st1-table(add-blank-rows: 1, cover: hide-glyph) = {
  box(
    width: 100%-5em,
    table(
      columns: (8.5em, 1fr, 1fr),
      rows: (auto, auto, 1.72em),
      table.header(
        table.cell(rowspan: 2)[电压（V）],
        table.cell(colspan: 2)[电流（mA）],
        [单晶硅],
	    [非晶硅],
      ),
      ..st1.slice(2).map(((a, b, c, d)) => (cover(a), cover(b), [
        #cover(d)
        #place(left+horizon, cover(c))
      ])).flatten(),
      ..(hide[0],)*3*add-blank-rows,
    )
  )
}

#let st2-table(cover: hide-glyph) = {
  box(
    width: 100%-0.5em,
    table(
      columns: (2.4em, 10.2em, ..(1fr,)*8),
      rows: (1.6em, 1.6em, 2.3em, ),
      table.cell(colspan: 2)[距离（cm）],
      ..(range(15, 55, step: 5).map(str)),
      table.cell(colspan: 2)[光强 $I$（W/m#super[2]）],
      ..st2.at(1).slice(2, 10).map(str).map(cover),
      table.cell(rowspan: 2, par(leading: 0.15em)[单晶硅]),
      [开路电压 $V_"OC"$（V）],
      ..st2.at(2).slice(2, 10).map(str).map(cover),
      // ..([],)*8,
      [短路电流 $I_"SC"$（mA）],
      ..st2.at(3).slice(2, 10).map(str).map(cover),
      // ..([],)*8,
      table.cell(rowspan: 2, par(leading: 0.15em)[非晶硅]),
      [开路电压 $V_"OC"$（V）],
      ..st2.at(4).slice(2, 10).map(str).map(cover),
      // ..([],)*8,
      [短路电流 $I_"SC"$（mA）],
      ..st2.at(5).slice(2, 10).map(str).map(cover),
    )
  )
}

#let st3-table(cover: hide-glyph, write: write) = {
  table(
    columns: (2em, 9.5em, ..(1fr,)*10),
    rows: 1.54em,
    table.cell(rowspan: 6, par(leading: 0.15em)[单晶硅]),
    [输出电压 $V$ (V)],
    [0], [0.2], [0.4], [0.6], [0.8], [1], [1.2], [1.4], [1.6], [1.8],
    [输出电流 $I$ (mA)],
    ..st3.at(2).slice(2, 12).map(cover),
    text(10pt)[输出功率 $P_upright(o)$ (mW)],
    ..st3.at(3).slice(2, 12).map(write),
    [输出电压 $V$ (V)],
    [2.0], ..st3.at(1).slice(13).map(cover), ..([],)*(9 - (st3.at(1).len() - 13)),
    [输出电流 $I$ (mA)],
    ..st3.at(2).slice(12).map(cover), ..([],)*(10 - (st3.at(2).len() - 12)),
    text(10pt)[输出功率 $P_upright(o)$ (mW)],
    ..st3.at(3).slice(12).map(write), ..([],)*(10 - (st3.at(3).len() - 12)),

    table.cell(rowspan: 6, par(leading: 0.15em)[非晶硅]),
    [输出电压 $V$ (V)],
    [0], [0.2], [0.4], [0.6], [0.8], [1], [1.2], [1.4], [1.6], [1.8],
    [输出电流 $I$ (mA)],
    ..st3.at(5).slice(2, 12).map(cover),
    text(10pt)[输出功率 $P_upright(o)$ (mW)],
    ..st3.at(6).slice(2, 12).map(write),
    [输出电压 $V$ (V)],
    [2.0], ..st3.at(4).slice(13).map(cover), ..([],)*(9 - (st3.at(4).len() - 13)),
    [输出电流 $I$ (mA)],
    ..st3.at(5).slice(12).map(cover), ..([],)*(10 - (st3.at(5).len() - 12)),
    text(10pt)[输出功率 $P_upright(o)$ (mW)],
    ..st3.at(6).slice(12).map(write),
  )
}
