# Simple Makefile to build the LaTeX CV

MAIN=src/main.tex
OUT=out
PDF=$(OUT)/Gustavo_Rohrer_CV.pdf

.PHONY: all build watch clean open

all: build

build:
	latexmk -pdf -xelatex $(MAIN)
	@echo "\nPDF generated: $(PDF)"

watch:
	latexmk -pdf -xelatex -pvc $(MAIN)

open: build
	open $(PDF)

clean:
	latexmk -C $(MAIN)
	rm -rf $(OUT)
	@echo "Cleaned."
