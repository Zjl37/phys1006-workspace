#import "../style.typ": *
#import "../utils.typ": *
#import "./utils.typ" as data

#show: doc => conf(doc)

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page(
 //  background: image("./manuscript/overlay-p1.png"),
)[

  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
    [/* 预习成绩 */ 2.0],
    [/* 总成绩 */ #hide[0]]
  )

  = 实验名称　拉伸法测杨氏弹性模量

  == 一、实验目的

  #v(5em)

  == 二、实验预习

  === 1. 杨氏模量的物理意义是什么？国标单位是什么？

  #v(5em)

  === 2. 光杠杆法的原理是什么，是如何实现微小量放大的？（画出测量原理光路图）。

  #v(22em)

  === 3. 本实验需要测量哪些物理量来间接得到杨氏模量？

]

#page(
 //  background: image("./manuscript/overlay-p2.png")
)[

== 三、实验现象及数据记录

#v(1.5em)

// 如需显示表格中的数据，请在下方删除 hide-glyph 有关调用，
// 或将 .map(hide-glyph) 改为 .map(write)

#align(center)[
  #set text(size: 9pt)
  #set table.cell(align: horizon)
  *一次性测量数据*

  #table(
    columns: 3*(6.5em,),
    table.header(
      [$L("mm")$],
      [$H("mm")$],
      [$D("mm")$],
    ),
    ..(data.L, data.H, data.D).map(hide-glyph),
  )

  #v(1em)

  *金属丝直径测量数据 螺旋测微器零差 $d_0 = #hide-glyph(data.d0) "mm"$*
  #table(
    columns: (auto, ..7*(4.6em,)),
    [序号 $i$], ..range(1, 7).map(str), [平均值],
    [直径视值 $d_(视 i) ("mm")$],
    ..data.d视.slice(0, 6).map(hide-glyph),
    write(data.d视.at(6)),
  )

  #v(1em)

  *加减力时标尺刻度与对应拉力数据*

  #table(
    columns: (auto, ..10*(3.04em,)),
    [序号 $i$], ..range(1, 11).map(str),
    [拉力视值 $f_i ("kg")$], ..range(10).map(it => [#it .00]),
    [加力时标尺刻度 $x_i^+ ("mm")$], ..data.xi-up.map(hide-glyph),
    [减力时标尺刻度 $x_i^- ("mm")$], ..data.xi-down.map(hide-glyph),
    [平均标尺刻度$("mm")$ \ $x_i = (x_i^+ - x_i^-)\/ 2$], ..data.xi-avg.map(hide-glyph),
    [标尺刻度改变量$("mm")$ \ $Delta x_i = x_(i+5) - x_i$], ..data.dxi.map(write),
    table.cell(colspan: 5, inset: 0pt,
      line(start: (100%, 0%), end: (0%, 3.45em))
    )
  )
]

#v(1fr)

#teacher-signature-box(teacher-name)

#v(29pt)

]

== 四、数据处理

（要有详细的计算过程，推导不确定度的表达式，计算杨氏模量及其不确定度，给出完整的测量结果表达形式）

#write[
  // TODO: 请在下方书写你的内容，删除这段假字。
  在以下分析中，取置信概率为 $68.3%$……#lorem_all()
  
  // 以下公式可能有用：
 //  不确定度的 A 类分量 $S_overline(d_视) = sqrt((sum_(i=1)^6 (d_(视 i) - overline(d_视))) / (6 times 5)) = 0.00000 "mm"$，

 //  B 类分量 $Delta_仪 / sqrt(3) = 0.004/sqrt(3) quad ("mm")$，

 //  合成不确定度 $U_d = sqrt(S_overline(d_视)^2 + (Delta_仪 / sqrt(3))^2) = 0.0000 "mm"$，故：

 //  逐差法
 //  $ overline(Delta x) = (x_6 - x_1 + x_7 - x_2 + x_8 - x_3 + x_9 - x_4 + x_10 - x_5)/(5 times 5) $

 //  金属丝的杨氏模量
 //  $ E = (8 Delta m g L H)/(pi d^2 D Delta x) $

 //  合成相对不确定度
 //  $ E_E = sqrt(U_L^2 / L^2 + U_H^2 / H^2 + U_D^2 / D^2 + U_(Delta m)^2 / (Delta m) + (4 U_d^2)/d^2 + U_overline(Delta x)^2 / overline(Delta x)^2) = 0.000 $

  ……
  因此，金属丝的杨氏弹性模量

  #align(center, rect[
    $ E = (2.000±0.000)×10^11 thick "N/m"^2 $
    $ E_E = 0.0% $
    （置信概率 $P = 68.3% $）
  ])
]

#pagebreak(weak: true)

== 五、实验结论及误差分析

#write[
  #h(2em)
  // TODO: 在此书写你的内容。
]
#v(1fr)

== 六、讨论问题
=== 1. 材料相同，但粗细、长度不同的两根钢丝，它们的杨氏模量是否相同？

=== 2. 从误差分析的角度分析为什么同是长度测量，需要采用不同的量具？

=== 3. 实验过程中为什么加力和减力过程，施力螺母不能回旋？

=== 4. 用逐差法处理数据的优点是什么？应该注意什么问题？

#write[
  #h(2em)
  // TODO: 在此书写你的答案。
]

#v(1fr)

