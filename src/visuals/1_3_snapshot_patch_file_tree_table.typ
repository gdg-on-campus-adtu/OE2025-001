#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF")

#set table(
  stroke: none,
  gutter: 0.3em,
  fill: (x, y) => if x == 0 or y == 0 {
    rgb(flavors.mocha.colors.lavender.hex)
  },
  inset: (right: 1.5em),
)

#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(rgb(flavors.mocha.colors.base.hex))
    strong(it)
  } else {
    it
  }
}

#table(
  columns: 4,
  [], [Snapshot-based], [Patch-based], [Delta-based],

  [Initial balance],
  [100],
  text(rgb(flavors.mocha.colors.green.hex))[+100],
  text(rgb(flavors.mocha.colors.green.hex))[+100],

  [Salary],
  [400],
  text(rgb(flavors.mocha.colors.green.hex))[+300],
  text(rgb(flavors.mocha.colors.red.hex))[-100]
    + ", "
    + text(rgb(flavors.mocha.colors.green.hex))[+400],

  [Heating],
  [0],
  text(rgb(flavors.mocha.colors.red.hex))[-400],
  text(rgb(flavors.mocha.colors.red.hex))[-400]
    + ", "
    + text(rgb(flavors.mocha.colors.green.hex))[+0],
)
