#import "../style.typ": *
#import "./utils.typ": *

#show: conf

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page(
 //  foreground: move(dx: 0pt, dy: -1pt, scale(104%, origin: center+horizon,
 //    image("./manuscript/碰撞打靶 - 0.jpg")
 //  ))
)[
  #set par(leading: 1.15em*2 - 1em)

  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 5 月 23 日　T2707　\#9],
    [/* 预习成绩 */ ],
    [/* 总成绩 */ #hide[0]]
  )

  #set block(above: 1.15em*2 - 1em, below: 1.15em*2 - 1em)

  #v(1em)
  = 实验名称　#underline[碰撞打靶实验]

  #v(0.5em)
  == 一、实验预习

  #v(0.5em)
  === 1. 本实验中碰撞过程如下图所示。质量为 $m_2$ 的被撞球置于高度为 $y$ 的载球支柱上，质量 为 $m_1$ 的摆球下落 $h_0$ 高度后，与被撞球在水平方向发生正碰，被撞球做平抛运动，水平位移为 $x_0$，理想情况下，不考虑空气阻力以及载球支柱对被撞球的摩擦力，请分析碰撞过程中两个小球组成的系统动量是否守恒。

  #align(right, image("./fig/collision-example.png"))

  #v(0.5em)
  === 2. 如上图所示，推导理想情况下（不考虑空气阻力以及载球支柱对被撞球的摩擦力，碰撞过程为弹性碰撞）摆球的下落高度 $h_0$ 与载球支柱高度 $y$、预设靶心位置 $x_0$、摆球质量 $m_1$、被撞球质量 $m_2$、被撞球半径 $r$ 的关系式，后续实验中，需要根据计算出的 $h_0$ 数值设定摆球的高度。
]

#page(
  // background: image("./ref/q--2.png")
)[
  #v(2.5em)

  == 二、实验现象及原始数据记录

  #[
    #set text(size: 9pt)
    #set align(center)
    #set table.cell(align: horizon, inset: (x: 0.85em))

    #v(1em)
    表1-1
    #v(0.5em)
    #st1-table()

    #v(2.5em)
    表 1-2
    #v(0.5em)

    #st2-table()

    #v(1fr)

    #teacher-signature-box(teacher-name)

    #v(2em)
  ]
]

== 三、数据处理

#h(2em)
（根据测量数据计算摆球理论高度 $h = h_0 + r + y$，计算落点的平均位置 $overline(x)$，并结合落点为预设位置 $x_0$ 时摆球的位置 $h'$ 计算损失的机械能百分比，要有详细的计算过程，格式工整）

#write[
  // 在此书写你的内容
]

#pagebreak(weak: true)

== 四、实验结论及现象分析

#write[
  #h(2em)
  // 在此书写你的内容
]

#v(1fr)

== 五、讨论题

=== 1. 在质量相同的两球碰撞后，撞击球的运动状态与理论分析是否一致？这种现象说明了什么？

=== 2. 如果不放被撞球，摆球在摆动回来时能否达到原来的高度？这说明了什么？

=== 3. 本实验中，球体不用金属，用石蜡或软木会有什么不同效果？

#write[
  #h(2em)
  // 在此书写你的答案
]
#v(1fr)

