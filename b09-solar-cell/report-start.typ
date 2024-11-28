#import "../style.typ": *
#import "./utils.typ": *

#show: conf
#show: fz-punctuation-adjust

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page[
  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 5 月 23 日　T2707],
    [/* 预习成绩 */ ],
    [/* 总成绩 */ #hide[0]]
  )

  #set par(leading: 1.15em*1.5 - 1em)

  #v(0.2em)
  = 实验名称　太阳能电池的基本特性研究

  == 一、预习
  #set enum(indent: 2em)
  1. 太阳能电池的基本结构和工作原理是什么？
  2. 太阳能电池的开路电压、短路电流、最佳匹配负载和填充因子的物理含义是什么？
]

#page(
  // foreground: image("manuscript/manuscript_2.svg"),
)[
  == 二、原始数据记录

  === #h(2em) 1. 硅太阳能电池的暗特性测量

  #[
    #set text(size: 9pt)
    #set align(center)
    #set table.cell(align: horizon, inset: (x: 0.85em))

    #v(0.5em)
    表1　太阳能电池的暗伏安特性测量

    #st1-table(add-blank-rows: 1)
  ]

  === #h(2em) 2. 开路电压、短路电流与光强关系测量

  #[
    #set align(center)
    #set table.cell(align: horizon, inset: (x: 0.85em))

    #v(0.5em)
    #text(size: 9pt)[表2　两种太阳能电池开路电压与短路电流随光强变化关系]

    #st2-table()
  ]
]

#page(
  // foreground: image("manuscript/manuscript_3.svg"),
)[
  === #h(2em) 3. 太阳能电池输出特性测试

  #[
    #set align(center)
    #set table.cell(align: horizon, inset: (x: 0.85em, bottom: 0.65em))

    #text(size: 9pt)[
      #h(7em)表3　两种太阳能电池输出特性实验#h(4em)#box[光强 $I=$ #h(2em) W/m#super[2]]
    ]

    #st3-table()
  ]

  #v(0.5em)
  #box(inset: (x: -0.5em), width: 100%)[
    #teacher-signature-box(teacher-name)
  ]
]

== 三、数据处理

#set enum(indent: 2em)

1. 绘制单晶硅、非晶硅暗伏安特性曲线。

#write[
  // write here

  #grid(
    columns: 2,
    figure(
      caption: "单晶硅的暗伏安特性曲线",
      image("fig/st1-g1.svg")
    ),
    figure(
      caption: "非晶硅的暗伏安特性曲线",
      image("fig/st1-g2.svg")
    )
  )
]

2. 根据表2数据，画出两种太阳能电池的开路电压随光强变化的关系曲线以及短路电流随光强变化的关系曲线。

#write[
  #figure(
    caption: "两种太阳能电池的开路电压随光强变化的关系",
    image("fig/st2-voc.svg")
  )

  #grid(
    columns: 2,
    figure(
      caption: "单晶硅太阳能电池的短路电流随光强变化的关系",
      image("fig/st2-isc-monocryst.svg")
    ),
    figure(caption: "非晶硅太阳能电池的短路电流随光强变化的关系",
      image("fig/st2-isc-amorph.svg")
    )
  )

  // write here ……
]

3. 根据表3数据作两种太阳能电池的输出伏安特性曲线及功率曲线。计算最大功率Pmax和最佳匹配负载电阻。

#write[
  // ……
]

4. 根据表3数据计算两种太阳能电池的填充因子和转换效率。转换效率为：

#write[
  #figure(
    caption: "单晶硅太阳能电池的伏安特性及功率曲线",
    image("fig/st3-monocryst.svg")
  )

  #figure(
    caption: "非晶硅太阳能电池的伏安特性及功率曲线",
    image("fig/st3-amorph.svg")
  )

  // ……
]

其中S为太阳能电池面积（按50mm*50mm计算），I为光强。

5. 分析可能的误差来源。

#write[
  // ……
]

#pagebreak(weak: true)

== 四、实验现象分析及结论

#write[
  // ……
]

== 五、讨论题
    1. 太阳能电池的工作原理是什么？

#write[
  // ……
]

    2. 如何根据伏安特性曲线计算太阳能电池的最大输出功率和相应的最佳匹配电阻？

#write[
  // ……
]
