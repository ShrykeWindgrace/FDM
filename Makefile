default: buildNix

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

buildNix:
	latexmk -pdf Main.tex
	latexmk -pdf Main-lev.tex
	latexmk -pdf FullPolylog.tex

install:
	cp Main.pdf ${out}
	cp Main-lev.pdf ${out}
	cp FullPolylog.pdf ${out}

help:
	echo "several latex subprojects near my thesis"

