TEXFILE=main.tex
PDFFILE=Trinity_Klein_Resume.pdf

LATEX=pdflatex
LATEXFLAGS=-interaction=nonstopmode -halt-on-error

.PHONY: all build clean watch

all: build

build:
	$(LATEX) $(LATEXFLAGS) $(TEXFILE)
	$(LATEX) $(LATEXFLAGS) $(TEXFILE)

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz

watch:
	latexmk -pdf -pvc -interaction=nonstopmode -halt-on-error $(TEXFILE)
