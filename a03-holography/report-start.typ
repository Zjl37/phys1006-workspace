#import "../style.typ": *
#import "../utils.typ": *

#show: conf

// TODO: 请替换以下内容
#let teacher-name = "张三"

#page(
 //  background: image("./manuscript/overlay-p1.jpg")
)[

  #report-meta(
    teacher-name,
    [/* 实验日期 */ 2024 年 11 月 4 日　T5104　\#9],
    [/* 预习成绩 */ 2],
    [/* 总成绩 */ #hide[0]]
  )

  #v(-1em)
  = 实验名称　全息技术实验

  #v(-0.5em)
  == 一、 预习

  简述全息照相的记录与再现原理。
]

#page(
 //  background: image("./manuscript/overlay-p2.jpg")
)[
  == 二、原始数据记录

  #{
    set table.cell(inset: (x: 0.59em), align: horizon)
    set align(center)

    let light-path-info = ("0.15", "0.15", "2.30", "2.30", "30.00")
  //   show <table-data-content>: hide-glyph

    v(0.5em)
    text(size: 9pt)[表1 光路信息]
    v(2pt)
    box(
      inset: (x: -0.5em),
      table(
        columns: 5,
        rows: (2.4em, 2.6em),
        [物光光强],
        [参考光光强],
        [物光光程（dm）],
        [参考光光程（dm）],
        [参考光与物光的夹角（°）],
        ..light-path-info.map(it => [#it <table-data-content>]),
      )
    )
  }

  #v(1fr)

  #teacher-signature-box(teacher-name)

  #v(7.3em)

]

== 三、实验现象分析及结论

试分析哪些因素会对全息成像有影响。

#write[
  // 在此书写你的内容
]

#v(2fr)

== 四、讨论题

=== 1. 试比较全息照相与普通照相的异同点。

=== 2. 为什么用白光照射全息照片会出现彩带？为什么说观察到彩带即说明拍摄成功？

=== 3. 参考光与物光之间夹角的大小对成像有何影响？

#write[
  #h(2em)
  // 在此书写你的答案
]

#v(3fr)

