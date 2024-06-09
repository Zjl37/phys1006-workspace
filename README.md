# PHYS1006 Workspace

适用于 HITSZer 的一站式物理实验报告工作区，可以帮助你完成**数据处理**和**报告排版**的部分工作。本 workspace 特点是用 python 处理实验数据，用 [Typst](https://typst.app/) 排版文档。

![封面图](https://s2.loli.net/2024/04/06/RXS3cLlf9epCvEN.png)

## 进展

| 文件夹名           | 状态 | 实验名称 |
| :----------------- | :-- | :-- |
| a01-collision      | ✅ | 碰撞打靶实验 |
| a02-youngs-modulus | ✅ | 拉伸法测杨氏弹性模量 |
| a03-holography     | ✅ | 全息技术实验 |
| a04-oscilloscope   | ✅ | 示波器实验 |
| a05-rlc            | ✅ | RLC 电路暂态特性的研究 |
| a06-mag-reso-coupl | 💤 | 磁耦合谐振式无线电力传输实验 |
| a07-speed-of-sound | ✅ | 空气中声速的测量 |
| a08-michelson-ifer | 💤 | 迈克尔逊干涉仪 |
| a09-millikan-odrop | 💤 | 电子电荷的测定——密立根油滴法 |
| a10-hall-effect    | ✅ | 霍尔效应及其应用 |
| a11-franck-hertz   | ✅ | 弗兰克-赫兹实验 |
| a12-surf-tens-coef | 💤 | 液体表面张力系数测量 |


标「💤」为我本学期未选实验，欢迎 PR！

## 前置要求

为了使用此 workspace，

- 你的电脑上需装有较新版本的 Python、Jupyter Notebook 及 numpy、scipy、matplotlib 等常用包。
- Typst，并且你晓得如何编辑和编译 Typst 源文件
- （可选）LaTeX 环境

## 使用说明：一般流程

首先，克隆本仓库，修改根目录下的 `stu-info.typ` 文件，在其中填入你的个人信息，这将会出现在每份报告的头部。

每个实验对应一个文件夹，其一般具有如下结构：
```
.
├── a10-hall-effect.ipynb
├── data
├── fig
├── manuscript
├── report.pdf
├── report-start.typ
├── report.typ
└── utils.typ
```

对于每个实验：

1. 将实验原始数据填入 data 目录中的表格文件中。

    如对于同一记录表，data 目录中同时存在形如 `st1-VH-IM-raw.csv` 和 `st1-VH-IM.csv` 的文件，将原始数据填入名称含有 raw 的文件中，运行下述程序之后，处理好的数据将会被输出到另一个文件中。

2. 运行与实验文件夹同名的 ipynb 文件（注意阅读其中的文字和注释），这就能处理数据、绘制图像，保存在 data 和 fig 目录中。如果你不改变这些中间文件的名称，这些数据和图像将自动嵌入 Typst 文档中。你可以修改代码以改变图像的颜色、线形等。

   注意：Notebook 的不同部分可能有同名变量，建议按顺序执行各代码块，否则可能出错。
3. 将 report-start.typ 文件复制为 report.typ，在后者中书写你的报告内容（注意阅读其中的注释）。
   
4. 嵌入教师签字、成绩和手写内容。方法如下：
   - 扫描或拍摄你的纸质实验报告，用图像处理程序处理所得图像，保存在 manuscript 目录中
   - 在 report.typ 中的适当位置添加类似如下的代码，调整缩放和偏移值，使叠加图像处于正确位置。
    ```typst
    #absolute-place(
      "overlay-p1",
      dy: -1pt,
      dx: 2.5pt,
      scale(144%, origin: top+left, image("./manuscript/overlay-p1.png"))
    )
    ```
   注：请给不同的叠加图像以不同的标签名（`absolute-place` 的第一个参数），以免排版出错。

   如不想采用此叠加方式，亦可用工具将你的扫描文稿和 Typst 输出文档的后半部分拼接，以得到完整的实验报告。

## 许可证

除非另有说明，本仓库内容[按 CC BY-NC-SA 4.0 International 协议许可，只要遵守一定条件，你可以自由地修改、复制或发布之](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans)。若你向本仓库贡献，即视为你亦将贡献的内容以同样的协议许可。
