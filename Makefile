default: help

all: main main-lev polylog

main:
	latexmk -pdf Main.tex

main-lev:
	latexmk -pdf Main-lev.tex

polylog:
	latexmk -pdf FullPolylog.tex
clean:
	latexmk -c

clean-all:
	latexmk -C

help:
	echo "several latex subprojects near my thesis"

