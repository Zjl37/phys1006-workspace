#let file = "./data.csv"
#let data = read(file).split(regex("\r?\n")).map(ln => ln.split(","))

#let (L, H, D) = data.at(2).slice(0, 3)
#let d0 = data.at(5).at(1)
#let d视 = data.at(7).slice(1, 8)

#let xi-up = data.at(12).slice(1, 11)
#let xi-down = data.at(13).slice(1, 11)

#let xi-avg = data.at(14).slice(1, 11)
#let dxi = data.at(15).slice(1, 6)
