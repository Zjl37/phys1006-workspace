#import "../style.typ": *
#import "./utils.typ": *

#show: doc => conf(doc)

// TODO: 请替换以下内容
#let teacher-name = "张三"

#report-meta(
  teacher-name,
  [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
  [/* 预习成绩 */ 2.0],
  [/* 总成绩 */ #hide[0]]
)

= 实验名称　夫兰克-赫兹实验

== 一、实验预习

=== 1. 简要叙述波尔的原子能级理论;

=== 2. 描述夫兰克-赫兹的实验原理。

// #absolute-place(
//   "overlay-p1",
//   dy: -1pt,
//   dx: 2.5pt,
//   scale(144%, origin: top+left, image("./manuscript/overlay-p1.png"))
// )

#pagebreak(weak: true)

== 二、实验现象及原始数据记录

#write[
  // your content here...
  #lorem_all()

  #v(1fr)

  #teacher-signature-box([#teacher-name])

 //  #absolute-place(
 //    "overlay-p2",
 //    dy: -2.3pt,
 //    scale(144%, origin: top+left, image("./manuscript/overlay-p2.png"))
 //    // image("./manuscript/overlay-p2.png", width: 595pt)
 //  )

  // 你可能想要在此插入一张示波器照片：
 //  #figure(
 //    caption: "自动模式实验示波器最终图形",
 //    image("./fig/1-oscilloscope.JPG")
 //  )

  #v(6.9em)

  #pagebreak(weak: true)
]

#pagebreak(weak: true)

== 三、数据处理

=== 1. 利用计算机软件绘制 $I_A–U_(G_2 K)$ 曲线;

#write[
  // your content here...
  #figure(
    caption: "第一组实验阳极电流与加速电压关系图",
    image("./fig/2-g1-IA-UG2K.png")
  )
  #figure(
    caption: "第二组实验阳极电流与加速电压关系图",
    image("./fig/3-g2-IA-UG2K.png")
  )
]

#pagebreak(weak: true)

=== 2. 对曲线进行拟合，利用各峰值或波谷所对应的电压值，分别用逐差法和最小二乘法计算
氩原子的第一激发电位。

#write[
  // your content here ...
  // #show math.equation: math.display
]

#v(1fr)

== 四、实验结论及现象分析

#write[
  // your content here ...
 //  #show math.equation: math.display
]

#v(1fr)

#pagebreak(weak: true)

== 五、讨论题

=== 1. 在 $I_A-U_(G_2 K)$ 曲线中，为什么随着 $U_(G_2K)$ 的增大，波谷电流逐渐增大?

=== 2. 请分析拒斥电压改变对 $I_A-U_(G_2 K)$ 曲线的影响。

=== 3. 为什么弗兰克-赫兹实验只能测出第一激发态电位?

#write[
  // your answer here ...
  #lorem_all()
]
