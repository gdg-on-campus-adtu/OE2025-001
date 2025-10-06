### 1. How to work with this presentation?

This presentation can be scaffolded using [Nix](https://nixos.org) and
[direnv](https://direnv.net). To scaffold, run:

```fish
direnv allow
```

While **Nix** is the preferred way to work on this presentation, if you wish to
do things manually, you need:

- [just](https://github.com/casey/just), a command runner. `(optional)`
- [presenterm](https://github.com/mfontanini/presenterm), a markdown terminal
  slideshow tool. `(required)`
- [mermaid-cli](https://github.com/mermaid-js/mermaid-cli), a command line tool
  for the [Mermaid](https://github.com/mermaid-js/mermaid) library. `(required)`
- [typst](https://github.com/typst/typst), a markup-based typesetting system
  that is powerful and easy to learn. Additionally, the typst documents make use
  of [Maple Mono NF](https://github.com/subframe7536/maple-font). `(required)`
- [WeasyPrint](https://github.com/Kozea/WeasyPrint), the awesome document
  factory! `(optional)`

> [!note]
>
> If you don't mind running long commands every single time, you can skip
> `just`. Additionally, `WeasyPrint` is only needed if you want to export the
> presentation as a `PDF`.

On Linux/macOS, you can either make use of [Homebrew](https://brew.sh) or your
package manager of choice. On Windows, [winget](https://winget.run) is probably
your best bet. Additionally, `mermaid-cli` can be installed from
[npmjs.com](https://www.npmjs.com/package/@mermaid-js/mermaid-cli), while
`WeasyPrint` can be installed from
[pypi.org](https://pypi.org/project/weasyprint). Make sure the tools are
available through the `PATH` variable after you install them your preferred way.

The tasks to run and export this presentation are defined in
[Justfile](/Justfile). Here is a quick overview:

```fish
# Start the presentation
just present
# or
presenterm --config-file=config/config.yaml src/presentation.md

# Export the presentation as a PDF
just pdf
# or
presenterm --config-file=config/config.yaml --export-pdf src/presentation.md

# Export the presentation as a portable HTML website
just html
# or
presenterm --config-file=config/config.yaml --export-html src/presentation.md
```

### 2. Licensing

The content of this repository has been released into the public domain under
[CC0 1.0 Universal](/LICENSE).
