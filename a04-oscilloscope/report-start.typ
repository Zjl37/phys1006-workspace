#import "../style.typ": *
#import "../utils.typ": *

#show: doc => conf(doc)

// TODO: 请替换以下内容：
#let teacher-name = "张三"

#page(
 //  background: image("./manuscript/overlay-p1.png")
)[
  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
    [/* 预习成绩 */ 2],
    [/* 总成绩 */ #hide[0]]
  )

  #v(0.5em)

  = 实验名称　示波器实验（虚拟仿真）

  #v(0.5em)

  == 一、实验预习

  === 1. 示波器的基本结构主要有哪些？

  #v(18em)

  === 2. 李萨如图形形成原理是什么？如何利用李萨如图形测量待测信号频率？
]

#{
  set figure.caption(position: top)
  show figure.caption: it => text(size: 9pt, it);
  set table.cell(inset: (y: 0.7em), align: horizon)
  page(
    //  background: image("./manuscript/overlay-p2.png")
  )[
    == 二、实验现象及原始数据记录

    实验模式

    === 1. 测量示波器自备方波输出信号的周期（时基分别为0.1、0.2、0.5ms/DIV）。

    #{
      let st1-timediv = (0.1, 0.2, 0.5)
      // TODO: 在下方填写你的数据：
      let st1-freq = (1000, 1000, 1000)

      figure(
        caption: "方波信号频率测量",
        table(
          columns: (10em, ..3*(8.5em,)),
          [选择时基（ms）], ..st1-timediv.map(str),
          [方波信号（Hz）], ..st1-freq.map(str)// .map(hide-glyph)
        )
      )
    }
    #v(1fr)

    === 2. 用示波器测量信号发生器输出的方波信号频率。
    #{
      let st2-timediv = (0.5, 0.5, 0.2, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1, 0.05)
      // TODO: 在下方填写你的数据：
      let st2-ndiv = (10, 5, 8.3, 6.3, 10, 8.3, 7.1, 6.3, 5.6, 10)
      let st2-T = (5, 2.5, 1.67, 1.25, 1, 0.833, 0.714, 0.625, 0.556, 0.5)
      let st2-freq = range(200, 2200, step: 200)

      figure(
        caption: "信号发生器输出的方波信号频率测量",
        table(
          columns: (8em, ..10*(1fr,)),
          [时基（ms）], ..st2-timediv.map(str),
          [格数], ..st2-ndiv.map(str),// .map(hide-glyph),
          [周期（ms）], ..st2-T.map(str),// .map(hide-glyph),
          [频率（Hz）], ..st2-freq.map(str),// .map(hide-glyph),
        )
      )
    }
    #v(1fr)

    === 3. 三角波信号的测量。

    （1）选择信号发生器输出三角波，频率分别为500、1K、1.5K、2K Hz；

    （2）测量各个频率下三角波的上升时间、下降时间和周期。
    #{
      let st3-freq = (500, 1000, 1500, 2000)
      // TODO: 在下方填写你的数据：
      let st3-tup = (1.00, 0.500, 0.333, 0.250)
      let st3-tdown = (1.00, 0.500, 0.333, 0.250)
      let st3-T = st3-tup.zip(st3-tdown).map(((x, y)) => calc.round(x+y, digits: 3))
      figure(
        caption: "不同频率下三角波信号测量",
        table(
          columns: (1.5fr, ..4*(1fr,)),
          rows: (2.2em, ..3*(4.5em,)),
          [频率（Hz）], ..st3-freq.map(str),
          [三角波信号上升时间（ms）], ..st3-tup.map(str),// .map(hide-glyph),
          [三角波信号下降时间（ms）], ..st3-tdown.map(str),// .map(hide-glyph),
          [三角波信号周期（ms）], ..st3-T.map(str),// .map(hide-glyph),
        )
      )
    }
    #v(9fr)
  ]

  page(
  //   background: image("./manuscript/overlay-p3.png")
  )[
    === 4. 观察李萨如图形并测频率。

    #h(2em)用待测信号源（正弦信号）和信号发生器分别接 y 轴（CH2通道）和 x 轴（CH1通#v(0.5em)道），取 $display(f_x/f_y)$ 为1、 1/2、2时，测出对应的 $f_x$ 和 $f_y$，记录有关图形并求出待测信号的频率。
    #{
      // TODO: 在下方填写你的数据：
      let st4-fy = ("2.1k",)*3
      let st4-fx = ("2.1k", "4.2k", "1.05k")
      figure(
        caption: "利用李萨如图形测量信号频率",
        table(
          columns: (8em, ..3*(1fr,)),
          rows: (auto, ..2*(4.5em,)),
          [$f_x\/f_y$], ..("1", "2/1", "1/2"),
          [待测信号频率（Hz）], ..st4-fy,// .map(hide-glyph),
          [信号发生器频率（Hz）], ..st4-fx,// .map(hide-glyph),
        )
      )
    }

    // 你可能想要在下方插入几张图片：

    // #grid(
    //   columns: 2,
    //   column-gutter: 1em,
    //   figure(
    //     caption: [$f_x/f_y = 1$ 时示波器图形],
    //     image("./fig/lissajous-11.png")
    //   ),
    //   figure(
    //     caption: [$f_x/f_y = 2$ 时示波器图形],
    //     image("./fig/lissajous-21.png")
    //   ),
    //   figure(
    //     caption: [$f_x/f_y = 1/2$ 时示波器图形],
    //     image("./fig/lissajous-12.png")
    //   ),
    // )

    #v(1fr)

    #teacher-signature-box([#teacher-name])

    #v(7.85em)
  ]
}

== 三、实验结论及现象分析

#write[
  // your content here...
]

#v(3fr)

== 四、讨论题

#h(2em)假定在示波器的y轴输入一个正弦电压，所用的水平扫描频率为120Hz，在荧光屏上出现三个稳定的正弦波形，那么输入信号的频率是多少？这是否是测量信号频率的好方法？为什么？

#write[
  // your answer here...
]

#v(4fr)
