#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
# Let Git know who you are.
git config --global user.name "<Your Name>"

# Let Git know which email to use.
git config --global user.email "<you@example.com>"

# Tell Git to always name the initial branch "main".
git config --global init.defaultBranch main

# Tell Git to always convert CRLF to LF line-endings before committing.
# on Linux/macOS:
git config --global core.autocrlf input
# on Windows:
git config --global core.autocrlf true
```
