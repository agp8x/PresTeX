MAINFILE = presentation
full:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
	bibtex $(MAINFILE)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
fast:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
	bibtex $(MAINFILE)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
latex:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE).tex
bibtex:
	bibtex $(MAINFILE)
clean:
	rm $(MAINFILE).aux
	rm $(MAINFILE).bbl
	rm $(MAINFILE).blg
	rm $(MAINFILE).log
	rm $(MAINFILE).nav
	rm $(MAINFILE).out
	rm $(MAINFILE).snm
	rm $(MAINFILE).synctex.gz
	rm $(MAINFILE).toc	
	#rm $(MAINFILE).pdf

