#import "../style.typ": *
#import "./utils.typ": *

#show: conf

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page(
  // background: move(dx: 2pt, dy: -4pt, scale(103%, origin: center+horizon,
  //   image("./manuscript/overlay-p1.png")
  // ))
)[

  // TODO: 请替换以下内容
  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
    [/* 预习成绩 */ #hide[0]],
    [/* 总成绩 */ #hide[0]]
  )

  #[
    #set par(leading: 1.15em*2 - 1.15em)
    #set block(below: 1.15em*2 - 1.15em, above: 1.15em*2 - 1.15em)

    = 实验名称　空气中声速的测量

    == 一、实验预习

    #h(2em)相位比较法测量声速实验中，示波器上调出李萨如图形后，改变换能器的间距，连续记录出现正斜率和负斜率直线时接收器的位置（如下图所示），记录了10个位置数据 $x_i$（$i = 1, 2, 3, ……, 9, 10$），所用声波频率为 $f$，如下表所示，请用逐差法处理数据，推导出声速 $v$ 的表达式。

    #image("./fig/lissajous-example+.png")

    #data-table(
      caption: [相位比较法测空气中声速，频率 $f$ = #"_____"],
      [$x_i$]
    )
  ]
]

#page(
  // background: move(dx: -2pt, dy: -9pt, scale(106%, origin: center+horizon,
  //   image("./manuscript/overlay-p2.png")
  // ))
)[
  == 二、 实验现象及原始数据记录

  #v(1.8em)
  #{
    // show <blank-content>: hide-glyph
    // show <table-data-content>: hide-glyph
    // 或：
    // show <blank-content>: write
    // show <table-data-content>: write

    st1-table()

    v(0.8em)

    st2-table()

    v(0.8em)

    st3-table()
    // 如果你未做此部分，改用：
    // st3-table(enable: false)

    v(1.2em)

    st4-table()

    v(1.5em)

    st5-table()
    // st5-table(enable: false)
  }
  #v(1fr)

  #teacher-signature-box(teacher-name)

  #v(3.4em)

]
#pagebreak(weak: true)

== 三、数据处理

#h(2em)【计算以上几种方法测得的声速，计算室温下空气中声速的理论值，分别计算四种方法得到的声速测量值与理论值的相对误差，根据时差法测量数据计算固体介质中的声速#fakebold[（选做）]，要有详细的计算过程，格式工整】

#write[
  === 1. 极值法（驻波法）测空气中声速
  // TODO: 在下方书写你的内容，删除假字
  #h(2em)
  用逐差法求得，声压取得极值的点之间的平均间隔 $Delta l = …… "mm"$，……#lorem_all()

  // 可能用到公式：
  $v_0 = 331.45 sqrt(1 + t/273.15) = …… "m/s"$

  === 2. 相位比较法测空气中声速

  #h(2em)
  ……

  === 3. 波形移动法油空气中声速

  #h(2em)
  ……

  === 4. 时差法测空气中声速

  #h(2em)
  ……

  === 5. 时差法测固体中声速

  #h(2em)
  ……
]

#pagebreak(weak: true)

== 四、实验结论及现象分析
#h(2em)（分析讨论以上几种方法测出的空气中的声速结果为何存在差异，从原理和操作上说明各自的优缺点）

#write[
  // TODO：在此书写你的内容
]

#v(1fr)

== 五、讨论题

=== 1. 使用驻波法测声速时，为什么示波器上观察到的是正弦波而不是驻波？

=== 2. 用相位比较法测量波长时，为什么用直线而不用椭圆作为S2移动距离的判断数据？

=== 3. 分析一下本实验中哪些因素可以引起测量误差。列出3条主要因素并说明原因。

#write[
  // 在此书写你的作答
]

#v(3fr)
