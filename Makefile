ALL: poster_120x90.pdf
#	poster_landscape.pdf

%.pdf: %.tex Makefile
	pdflatex --enable-write18 $< &&	pdflatex $< && pdflatex $<

clean:
	  rm -f *.aux	*.bbl	*.blg	*.log	poster_*.pdf 
