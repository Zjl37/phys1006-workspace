#import "../style.typ": *
#import "./utils.typ": *

#show: conf

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page(
 //  background: move(dx: 2pt, dy: -2pt, scale(104%, origin: center+horizon,
 //    image("./manuscript/overlay-p1.jpg")
 //  ))
)[

  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 5 月 16 日　T2708],
    [/* 预习成绩 */ ],
    [/* 总成绩 */ #hide[0]]
  )
 //  #v(0em)
  = 实验名称　RLC电路暂态特性的研究

  == 一、预习

  #v(0.5em)
  === 1. RC、RL串联电路暂态过程电压表达式，以及时间常数τ的表达式是什么？

  #v(0.5em)
  === 2. RLC串联电路的暂态过程（三种阻尼过程）电压表达式、时间常数τ表达式是什么？

  #v(0.5em)
  === 3. 请绘制数字示波器、信号发生器观测RC、RL和RLC串联电路的的连接线路示意图。

]

#page(
 //  background: move(dx: 2pt, dy: -1pt, scale(104.5%, origin: center+horizon,
 //    image("./manuscript/overlay-p2.jpg")
 //  ))
)[
  == 二、原始数据记录

  #show heading.where(level: 3): it => {h(2em); it.body}
  #set table.cell(align: horizon)
 //  #show <table-data-content>: hide-glyph

  === 1. RC*串联电路的暂态特性*（使用方波信号进行实验，可取 $V_"pp" = 10" V"$）

  #h(2em)
  $R = 500 thin Ω$
  #h(1.5em)
  方波信号周期 $T = #uline()$

  #st1-g1-table()

  #v(0.24em)
  #h(2em)
  $C = 100 "μF"$
  #h(1em)
  方波信号周期 $T = #uline()$

  #st1-g2-table()

  #v(0.4em)
  === 2. RL*串联电路的暂态过程*（使用方波信号进行实验，可取 $V_"pp" = 10" V"$）

  #v(0.25em)
  #h(4em)
  L = 10 mH
  #h(1em)
  方波信号周期 T = #uline()

  #st2-g1-table()

  #h(4em)
  $R = 1000 thin Ω$
  #h(1em)
  方波信号周期 $T = #uline()$

  #st2-g2-table()

  #v(0.5em)

  === 3. RLC*串联电路的暂态特性*（使用方波信号进行实验，可取 $V_"pp" = 10" V"$）

 //  #v(0.8em)
  #h(3em)测量欠阻尼情况下 $U_C$ 充电时振荡波形的任一 $t_1$ 时峰值 $U_(C t_1)$ 和 $t_1+n T$ 时峰值 $U_(C (t_1 + n T))$

  #v(0.8em)
  #st3-table()

  #h(3em)
 //  #show <blank-content>: hide-glyph
  $E=#uline(width: 5em, body: write[5V])$，
  $t_1=#uline(width: 5em, body: write[30.00µs])$，
  $T = #uline(width: 5em, body: write[91.60µs])$

  #v(1fr)
  #teacher-signature-box(teacher-name)
  #v(9.5em)
]

== 三、数据处理

#v(0.5em)

=== 1. 记录各项实验任务过程中的 $R$、$C$ 和 $L$ 各参数值，示波器观察到的波形，以及时间常数 $τ$.

#v(0.5em)
#[
  #show math.equation: math.display
  #set par(leading: 1.15em*2 - 1em)
  === 2. 测量欠阻尼情况下 $U_C$ 充电时振荡波形的任一 $t_1$ 时峰值 $U_(C t_1)$ 和 $t_1+n T$ 时峰值 $U_(C (t_1 + n T))$，采用最小二乘法或作图法求出 $ln(U_C/E - 1) ～ t$ 的斜率，计算时间常数 $τ$，并与理论值 $τ = (2L)/R$（$R = R_"电阻" + R_S + R_L$）进行比较，分析误差产生的原因。
]

#v(1em)

#write[
 //  #show math.equation: math.display
 //  #set par(leading: 1.15em*2.5 - 1em)
  #h(2em)
  // 在此书写你的内容

  #figure(
    caption: [$ln(U_C/E - 1) ～ t$ 图],
    image("./fig/st3-UC-E.svg")
  )
]

#pagebreak(weak: true)

== 四、实验现象分析及结论

#write[
  #h(2em)
  // 在此书写你的内容
]

#v(1fr)
== 五、讨论题

=== 1. 在RC和RL电路中，固定方波频率 $f$ 而改变 $R$ 的阻值，为什么会有各种不同的波形？若固定 $R$ 而改变方波频 $f$，会得到类似的波形吗？为什么？

=== 2. 在RLC电路中，为什么要适当调节方波频率才能观测到阻尼振荡的波形？如果频率很高，将会发生什么样的情况？试观察。

#write[
  #h(2em)
  // 在此书写你的作答
]

#v(1fr)
