TUTORIAL = idris-tutorial
DATE     = ${shell date +%F}
TUT_PDF  = ${DATE}-${TUTORIAL}.pdf

all: tutorial clean

tutorial:
	latexmk -gg -pdf -bibtex-cond ${TUTORIAL}.tex

version: tutorial
	mv ${TUTORIAL}.pdf ${TUT_PDF}

clean:
	latexmk -c

cthulhu:
	latexmk -C
	rm -rf ${TUT_PDF}

