
BIB = report_references.bib

.PHONY: all clean

all: cosn_submission.pdf

%.pdf: %.tex
	pdflatex $(*).tex
	bibtex $(*)
	pdflatex $(*).tex
	pdflatex $(*).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf

