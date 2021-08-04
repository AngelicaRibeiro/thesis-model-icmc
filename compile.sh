#!/bin/sh
rm thesis.aux  thesis.blg  thesis.glsdefs  thesis.ilg  thesis.loa  thesis.log  thesis.loq  thesis.lot  thesis.nlo  thesis.pdf  thesis.toc thesis.bbl  thesis.glo  thesis.idx thesis.ist thesis.lof  thesis.lol  thesis.los  thesis.mw   thesis.nls thesis.mw.mw thesis.synctex.gz thesis.ind thesis.fdb_latexmk
pdflatex thesis.tex
bibtex thesis.aux
makeindex thesis.nlo -s thesis.ist -o thesis.nls
makeglossaries thesis.glo
pdflatex thesis.tex
pdflatex thesis.tex
okular thesis.pdf