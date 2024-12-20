# PHYS1006 Workspace

适用于 HITSZer 的一站式物理实验报告工作区，可以帮助你完成**数据处理**和**报告排版**的部分工作。本 workspace 特点是用 python 处理实验数据，用 [Typst](https://typst.app/) 排版文档。

![封面图](https://s2.loli.net/2024/04/06/RXS3cLlf9epCvEN.png)

## 进展

| 文件夹名           | 状态 | 实验名称                             |
|:-------------------|:-----|:-------------------------------------|
| a01-collision      | ✅   | 碰撞打靶实验                         |
| a02-youngs-modulus | ✅   | 拉伸法测杨氏弹性模量                 |
| a03-holography     | ✅   | 全息技术实验                         |
| a04-oscilloscope   | ✅   | 示波器实验                           |
| a05-rlc            | ✅   | RLC 电路暂态特性的研究               |
| a06-mag-reso-coupl | 💤   | 磁耦合谐振式无线电力传输实验         |
| a07-speed-of-sound | ✅   | 空气中声速的测量                     |
| a08-michelson-ifer | 💤   | 迈克尔逊干涉仪                       |
| a09-millikan-odrop | 💤   | 电子电荷的测定——密立根油滴法       |
| a10-hall-effect    | ✅   | 霍尔效应及其应用                     |
| a11-franck-hertz   | ✅   | 弗兰克-赫兹实验                      |
| a12-surf-tens-coef | 💤   | 液体表面张力系数测量                 |
| b01-diy-microscope | 🚧   | 自组显微镜与望远镜                   |
| b02-spectrometer   | 🚧   | 分光计的调节及应用                   |
| b03-eq-thick-ifer  | 💤   | 光的等厚干涉现象与应用               |
| b04-spec-heat-cap  | 💤   | 准稳态法测不良导体的比热容和导热系数 |
| b05-wheatstone     | 🚧   | 用惠斯通电桥测电阻                   |
| b06-hysteresis     | 🚧   | 用示波器观测磁滞回线                 |
| b07-double-grating | 🚧   | 双光栅检测微弱振动                   |
| b08-gmr            | 🚧   | 巨磁阻效应与应用                     |
| b09-solar-cell     | ✅   | 太阳能电池的基本特性研究             |
| b10-planck-const   | 💤   | 光电效应法测定普朗克常量             |
| b11-mofe           | 💤   | 磁光效应及其在光通信中的应用         |
| b12-elec-optic-lc  | 💤   | 液晶电光效应及其应用                 |
| b13-viscosity      | 💤   | 液体黏度的测定                       |
| b14-speed-of-light | 🚧   | 光强调制法测光速                     |
| b15-diy-specgraph  | 🚧   | 自组光栅光谱仪实验                   |


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

1. 将实验原始数据填入 data 文件中。（也可能是多个文件或多张 Excel 工作表）

    如对于同一记录表，同时存在形如 `st1-VH-IM-raw.csv` 和 `st1-VH-IM.csv` 的文件，则将原始数据填入 raw 文件中，运行下述程序之后，处理好的数据将会被写入另一个中。

2. 运行与实验文件夹同名的 ipynb 文件（注意阅读其中的文字和注释），这就能处理数据、绘制图像，有用的计算值会显示在其单元格的输出中，图像将保存在 fig 目录中。只要你不改变这些中间文件的名称，这些数据和图像将自动嵌入 Typst 文档中。你可以修改代码以改变图像的颜色、线形等。

   注意：Notebook 的不同部分可能有同名变量，建议按顺序执行各代码块，否则可能出错。
3. 将 report-start.typ 文件复制为 report.typ，在后者中书写你的报告内容（注意阅读其中的注释）。
   
4. 嵌入教师签字、成绩和手写内容。方法如下：
   - 对于纸质实验报告：扫描或拍摄；对无纸化学习：从电子笔记软件导出；
   - 用图像处理程序或矢量图编辑工具处理所得图像，每页一张保存在 manuscript 目录中
   - 设置 `page` 的 `background` 或 `foreground` 属性为该图像，微调缩放和偏移值，使叠加图像处于正确位置，例如：
    ```typst
    #page(
      foreground: move(dx: 0pt, dy: -1pt, scale(104%, origin: center+horizon,
        image("./manuscript/overlay-p1.jpg")
      ))
    )[
      // 页面内容……
    ```

    当然，若嫌此方式麻烦，可仅用 Typst 书写报告的后半部分，与前半部分的扫描件/电子笔记导出 PDF 拼合为完整的报告。

## 友情链接

- [Doctxing/phytex](https://github.com/Doctxing/phytex) —— Doctxing 的物理实验报告 LaTeX 模板及绘图与数据处理工具

## 许可证

除非另有说明，本仓库内容[按 CC BY-NC-SA 4.0 International 协议许可，只要遵守一定条件，你可以自由地修改、复制或发布之](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans)。若你向本仓库贡献，即视为你亦将贡献的内容以同样的协议许可。
