#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
# Commit the file (open your default text editor).
git commit

# or, commit the file with an inline message.
git commit -m "Added file a.txt"

# Now, check the status again.
git status

# To check the commit you just made, use:
git log --oneline --graph # the flags make the output look pretty!
```
