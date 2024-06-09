#import "../utils.typ": *

#let st1 = csv("./data/st1.csv").slice(1)
#let st2 = csv("./data/st2.csv").slice(2)

#let st1-table() = {
  set table.cell(align: horizon, inset: (x: 0.85em))
  box(inset: (x: -5em), table(
    columns: 7,
    rows: (5em, 2.7em),
    [被撞球], [质量 $"(g)"$], [直径 $2r thin ("cm")$], [预设位置 $𝑥_0 thick "(cm)"$], [载球支柱高度 $y thin ("cm")$], [高度差 $h_0 thin ("cm")$], [
      摆球设置高度
      
      $h = h_0+r+y thick ("cm")$
    ],
    ..st1.at(0).slice(0, 3),
    ..st1.at(0).slice(5, 7).map(it => table.cell(rowspan: 3, it)),
    ..st1.at(0).slice(3, 5),
    ..st1.slice(1).map(row => row.slice(0, 5)).flatten(),
  //   [钢球],
  //   [], [], ..2*(table.cell(rowspan: 3)[],), [], [],
  //   [铜球], ..([],)*4,
  //   [铝球],
  ))
}

#let st2-table() = {
  set table.cell(align: horizon, inset: (x: 0.9em))
  box(inset: (x: -5em), table(
    columns: 7,
    rows: (2.7em, 5.1em, 2.66em),
    [被撞球], table.cell(colspan: 2)[钢球], table.cell(colspan: 2)[铜球], table.cell(colspan: 2)[铝球],
    [次数], ..3*([落点位置 \ $x thin ("cm")$], [落点为预设位置 $x_0$ 时 \ 摆球位置 $h' thin ("cm")$],),
    st2.at(0).at(0),
    st2.at(0).at(1),
    table.cell(rowspan: 10, st2.at(0).at(4)),
    st2.at(0).at(2),
    table.cell(rowspan: 10, st2.at(0).at(5)),
    st2.at(0).at(3),
    table.cell(rowspan: 10, st2.at(0).at(6)),
    ..st2.slice(1).map(row => row.slice(0, 4)).flatten(),
  //   [1], [], table.cell(rowspan: 10)[], [], [], [], [],
  //   ..range(2, 11).map(i => ([#i], ..5*([],))).flatten(),
  ))
}
