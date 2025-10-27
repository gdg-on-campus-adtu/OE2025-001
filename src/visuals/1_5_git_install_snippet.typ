#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF", size: 14pt)

```fish
# For Linux, you can either use your distribution's package manager e.g. pacman:
sudo pacman -S git
# or, use Homebrew (recommended for most people):
brew install git
# If my people (Nix folks) are present here, you already know your ways ;P

# For macOS, you can either use Homebrew (recommended):
brew install git
# or, use MacPorts:
sudo port install git
# NOTE: Apple ships a binary package of Git with Xcode.

# For Windows, use winget (recommended):
winget install --id Git.Git -e
```
