TEX = pdflatex

.PHONY: clean all

all: cv.pdf resignation.pdf

clean:
	@rm -f *.pdf *.log *.out *.aux

cv.pdf: cv.tex pin.pdf
	$(TEX) cv.tex
	mv cv.pdf cv-notcompressed.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=cv.pdf cv-notcompressed.pdf
	ln -f cv.pdf Jacek_Szubert_CV.pdf

pin.pdf: pin.tex
	$(TEX) pin.tex

resignation.pdf: resignation.tex .env.resignation
	$(TEX) resignation.tex

.env.resignation:
	if ! [ -f .env.resignation ]; then \
		cp .env.resignation.dist .env.resignation; \
	fi
