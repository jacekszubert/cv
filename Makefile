TEX = pdflatex

.PHONY: clean all

all: Jacek_Szubert.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

Jacek_Szubert.pdf: Jacek_Szubert.tex
	cvpl=$(cvpl) $(TEX) Jacek_Szubert.tex
