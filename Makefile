TEX = pdflatex

.PHONY: clean all

all: cv.pdf termination.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

cv.pdf: cv.tex pin.pdf
	$(TEX) cv.tex
	mv cv.pdf cv-notcompressed.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=cv.pdf cv-notcompressed.pdf
	ln -f cv.pdf Jacek_Szubert_CV.pdf

pin.pdf: pin.tex
	$(TEX) pin.tex

termination.pdf: termination.tex .env.termination
	if ! [ -f .env.termination ]; then \
		cp .env.termination.dist .env.termination; \
	fi
	$(TEX) termination.tex
