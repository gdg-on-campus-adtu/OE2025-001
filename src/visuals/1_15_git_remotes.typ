#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
# Add a remote.
git remote add "<name>" "<url>"

# List all actions doable on remotes (verbose).
git remote -v

# Push a branch to a remote.
git push "<remote>" "<branch>"

# Push a branch to a remote and start tracking changes as upstream
git push -u "<remote>" "<branch>"

# Pull changes from remote.
git pull "<remote>" "<branch>"

# If you're tracking the changes, you can just:
git pull
```
