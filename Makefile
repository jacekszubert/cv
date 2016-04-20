TEX = pdflatex

ifndef lang
	lang = en
endif

.PHONY: clean all

all: cv.pdf termination.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

cv.pdf: cv.tex
	lang=$(lang) $(TEX) cv.tex
	mv cv.pdf cv-notcompressed.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=cv.pdf cv-notcompressed.pdf

termination.pdf: termination.tex
	lang=$(lang) $(TEX) termination.tex
