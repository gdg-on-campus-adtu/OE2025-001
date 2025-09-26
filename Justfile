[doc("Runs `just --list`")]
default:
    @just --list

[doc("Start the presentation")]
present:
    @presenterm --config-file=config/config.yaml PRESENTATION.md
    
[doc("Export the presentation as a PDF")]
pdf:
    @presenterm --config-file=config/config.yaml --export-pdf PRESENTATION.md

[doc("Export the presentation as a portable HTML website")]
html:
    @presenterm --config-file=config/config.yaml --export-html PRESENTATION.md
