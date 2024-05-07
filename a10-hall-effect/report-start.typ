#import "../style.typ": *
#import "./utils.typ": *

#show: doc => conf(doc)

// TODO: 请替换以下内容
#let teacher-name = "张三"

// TODO: 请替换以下三个字段
#report-meta(
  teacher-name,
  [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
  [/* 预习成绩 */ 2],
  [/* 总成绩 */ #hide[0]]
)

= 实验名称　霍尔效应及其应用

== 一、实验目的

#v(7.1em)

== 二、实验预习

=== 1. 如何利用霍尔效应测量磁场？

#v(7.7em)

=== 2. 霍尔电压测量中存在哪些系统误差？用什么方法消除这些误差？

#v(20.6em)

=== 3. 各向异性磁阻：

#pagebreak(weak: true)

== 三、实验现象及数据记录

=== 1. 测量 $V_H–I_M$ 关系 #h(1fr) $I_S = 5.000 "mA"$

// 如希望在叠加图片中展示原始数据而不以印刷体显示相应的列，移除 hidden-cols 参数以使用其默认值。下同。
#st1-table("./data/st1-VH-IM.csv", hidden-cols: ())

#v(1fr)

=== 2. 测量 $V_H–I_S$ 关系 #h(1fr) $I_M = 0.500 upright("A")$

#st2-table("./data/st2-VH-IS.csv", hidden-cols: ())

#v(1fr)

#pagebreak(weak: true)

=== 3. 测量 $V_H–X$ 关系 #h(1fr) $I_M = 0.500 upright("A") quad I_S = 5.000 "mA"$

#st3-table("./data/st3-VH-X.csv", add-blank-rows: 2, hidden-cols: ())

#pagebreak(weak: true)

=== 4. AMR 的 $V_"out"–I_M$ 关系 #h(1fr) $V_S = 4.00V$

#st4-table("./data/st4-Vout-IM.csv", hidden-cols: ())

#v(1fr)

=== 5. AMR 的 $V_"out"-θ$ 关系 #h(1fr) $V_S=4.00 upright("V") quad I_M=150 "mA"$

#st5-table("./data/st5-Vout-theta.csv")

#v(1fr)

#teacher-signature-box([#teacher-name])

#v(1fr)

#pagebreak(weak: true)

== 四、数据处理及作图

画 $V_H–I_M$和 $V_H–I_S$ 曲线，用最小二乘法计算斜率 $K$，计算霍尔元件灵敏度 $K_H$；

画 $B-X$ 图，描述螺线圈内 $X$ 方向上 $B$ 的分布特征；

作出 $V_"out"–B$ 关系曲线，并取在线性范围（$±6 "Gs"$）内数据，根据公式计算各向异性磁阻传感器的灵敏度 $S_A$；

作各向异性磁阻传感器的 $V_"out"-θ$ 关系曲线，确认输出电压与转角的关系。

#write[
  // 如不想并排显示，删除此 grid，保留其中的 figure
  #grid(
    columns: (1fr, 1fr),
    align: horizon,
    figure(
      image("./fig/st1-VH-IM.svg"),
      caption: [霍尔元件的 $V_H–I_M$ 关系图]
    ),
    figure(
      image("./fig/st2-VH-IS.svg"),
      caption: [霍尔元件的 $V_H–I_S$ 关系图]
    ),
  )

  #figure(
    caption: [螺线管中磁感应强度分布图],
    image("./fig/st3-B-x.svg")
  )

  #figure(
    caption: [AMR 的输出电压与外加磁场磁感应强度关系图],
    image("./fig/st4-Vout-B.svg")
  )

  #figure(
    caption: [AMR 的输出电压与外加磁场角度关系图],
    image("./fig/st5-Vout-theta.svg")
  )

  // TODO: 在此处继续书写你的报告内容，删除以下假字
  #lorem_all()
]

#pagebreak(weak: true)

== 五、讨论问题

=== 1. 如何根据 $B$、$I_H$ 和 $U_H$ 方向判断霍尔片的导电类型（N 或 P 型半导体），要求画图说明。（注：N 型半导体中，载流子为电子；P型半导体中将载流子视为正离子）；
=== 2. 估算本实验所用霍尔片的载流子浓度。

#write[
  // TODO: 在此处书写你的作答，删除以下假字
  #lorem_all()
]

