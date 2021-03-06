#!/bin/bash

## Erstelle PDF im A5-Format
pdflatex freie-software-einfuehrung.tex
pdflatex freie-software-einfuehrung.tex

## Erstelle auf A4 beidseitig druckbares PDF (zwei A5 pro Seite)
pdfbook --suffix "a4-druck" freie-software-einfuehrung.pdf

## Erstelle HTML
pandoc --standalone --table-of-contents -o freie-software-einfuehrung.html freie-software-einfuehrung.md

