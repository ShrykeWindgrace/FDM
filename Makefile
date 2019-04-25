default: help

all: main main-lev polylog

main:
	latexmk -pdflatex='pdflatex -synctex=1' -pdf Main.tex

main-lev:
	latexmk -pdflatex='pdflatex -synctex=1' -pdf Main-lev.tex

polylog:
	latexmk -pdflatex='pdflatex -synctex=1' -pdf FullPolylog.tex
clean:
	latexmk -c

clean-all:
	latexmk -C

help:
	echo "several latex subprojects near my thesis"

