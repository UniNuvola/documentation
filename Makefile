REQQUICK:=
REQCUSTOM:=
REQMANUAL:=

all: quickstart.pdf customimages.pdf manual.pdf

quickstart.pdf: quickstart.tex $(REQQUICK)
	pdflatex `basename "$@" .pdf`.tex 

customimages.pdf: customimages.tex $(REQCUSTOM)
	pdflatex `basename "$@" .pdf`.tex 

manual.pdf: manual.tex $(REQMANUAL)
	pdflatex `basename "$@" .pdf`.tex 

.PHONY: clean
clean:
	rm -f *.fdb_latexmk *.fls *.pdf *.aux *.log *.out *.synctex.gz
