### 1. How to work with this presentation?

This project can be scaffolded using [Nix](https://nixos.org) and
[direnv](https://direnv.net). To scaffold, run:

```fish
direnv allow
```

Alternatively, if you prefer to do things manually, you need:

- [just](https://github.com/casey/just), a command runner. `(optional)`
- [presenterm](https://github.com/mfontanini/presenterm), a markdown terminal
  slideshow tool. `(required)`
- [mermaid-cli](https://github.com/mermaid-js/mermaid-cli), a command line tool
  for the [Mermaid](https://github.com/mermaid-js/mermaid) library. `(required)`
- [WeasyPrint](https://github.com/Kozea/WeasyPrint), the awesome document
  factory! `(optional)`

> [!note]
>
> If you don't mind running long commands every single time, you can skip
> `just`. Additionally, `WeasyPrint` is only needed if you want to export the
> presentation as a `PDF`.

Make sure the binaries are available through the `PATH` variable. The tasks to
run and export the presentation are defined in [Justfile](/Justfile). Here is an
quick overview:

```fish
# Start the presentation
just present
# or
presenterm --config-file=config/config.yaml PRESENTATION.md

# Export the presentation as a PDF
just pdf
# or
presenterm --config-file=config/config.yaml --export-pdf PRESENTATION.md

# Export the presentation as a portable HTML website
just html
# or
presenterm --config-file=config/config.yaml --export-html PRESENTATION.md
```

### 2. Licensing

The content of this repository has been released into the public domain under
[CC0 1.0 Universal](/LICENSE).
