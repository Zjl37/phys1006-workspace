#let conf(doc) = {
  import "./zh-font-config.typ": *

  set page(
    paper: "a4",
    margin: (x: 90pt, top: 72pt, bottom: 1in),
    header-ascent: 0pt,
    header: {
      set text(font: ZFC--kai-zh, size: 12pt)
      box(
        height: 1cm,
        align(top, box(
          stroke: (bottom: 0.8pt),
          inset: (bottom: 5pt),
          grid(
            columns: (auto, auto),
            column-gutter: 1fr,
            [大学物理实验报告],
            [哈尔滨工业大学（深圳）]
          )
        ))
      )
    },
    footer: context {
      set align(right)
      set text(size: 9pt, font: ZFC--hei-zh)
      move(dy: -30pt, counter(page).display("1"))
    }
  )

  set block(
    below: 1.15em*1.5 - 1em,
  )

  set text(
    font: ZFC-text,
    size: 10.5pt,
    lang: "zh",
    // top-edge: 221em/256,
    // bottom-edge: -35em/256,
  )

  show strong: it => text(
    font: ZFC-text-strong,
    it
  )

  show heading.where(level: 1): it => {
    set align(center)
    set block(spacing: 0pt)
    set text(
      font: ZFC-heading,
      size: 12pt,
      weight: 500,
    )
    v(12pt)
    it
    v(12pt)
  }

  show heading.where(level: 2): it => {
    set block(above: 7.8pt, below: 1.15em*1.5 - 1em)
    set text(
      font: ZFC-heading,
      size: 10.5pt,
      weight: 500,
    )
    it
  }

  show heading.where(level: 3): it => {
    set block(above: 0.15em)
    set text(weight: 300)
    it
  }

  set par(
    leading: 1.15em*1.5 - 1em,
    justify: true,
  )

  show link: it => underline(text(fill: color.blue, it))

  show math.equation: set text(font: ZFC-text-math)

  doc

}
