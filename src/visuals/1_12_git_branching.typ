#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
# List the available branches.
git branch # Optionally can add the "-l" flag for the same behavior.

# Switch to another branch.
git switch "<target>"

# or, create a new branch if it doesn't exist already.
git switch -c "<target>" "<optional commit id>"

# Now, list the available branches again.
git branch -l

# You can always rename the current branch using:
git branch -m "<target>"
```
