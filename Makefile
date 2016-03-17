TEX = pdflatex

ifndef lang
	lang = en
endif

.PHONY: clean all

all: Jacek_Szubert.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

Jacek_Szubert.pdf: Jacek_Szubert.tex
	lang=$(lang) $(TEX) Jacek_Szubert.tex
