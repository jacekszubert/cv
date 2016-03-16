TEX = pdflatex

.PHONY: clean all info

all: Jacek_Szubert.pdf

clean:
	rm -f *.pdf *.log *.out *.aux

Jacek_Szubert.pdf: Jacek_Szubert.tex
	$(TEX) Jacek_Szubert.tex
