#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
/something # Ignore the "something" file or directory in the current repo.
/file.txt
/directory/* # Ignore everything inside the "directory" directory.
# You can google for "Git Ignore Glob Pattern" to learn about the other variants.
```
