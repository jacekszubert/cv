TEX = pdflatex

ifndef lang
	lang = en
endif

.PHONY: clean all

all: cv.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

cv.pdf: cv.tex
	lang=$(lang) $(TEX) cv.tex
