#!/bin/bash

## Erstelle PDF im A5-Format
pdflatex freie-software-einfuehrung.tex
pdflatex freie-software-einfuehrung.tex

## Erstelle auf A4 druckbares PDF (zwei A5 pro Seite)
pdfbook --suffix "auf-a4-drucken" freie-software-einfuehrung.pdf

## Erstelle HTML
pandoc --standalone --table-of-contents -o freie-software-einfuehrung.html freie-software-einfuehrung.md

