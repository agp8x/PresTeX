I =
MAINFILE = presentation
DOTTYPE = png
full:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
	bibtex $(MAINFILE)$(I)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
fast:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
	bibtex $(MAINFILE)$(I)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
latex:
	pdflatex -synctex=1 -interaction=nonstopmode $(MAINFILE)$(I).tex
bibtex:
	bibtex $(MAINFILE)$(I)
clean:
	@rm -f $(MAINFILE)$(I).aux
	@rm -f $(MAINFILE)$(I).bbl
	@rm -f $(MAINFILE)$(I).blg
	@rm -f $(MAINFILE)$(I).log
	@rm -f $(MAINFILE)$(I).nav
	@rm -f $(MAINFILE)$(I).out
	@rm -f $(MAINFILE)$(I).snm
	@rm -f $(MAINFILE)$(I).synctex.gz
	@rm -f $(MAINFILE)$(I).toc
	@#rm -f $(MAINFILE)$(I).pdf
dot:
	@for i in image/*.dot; do \
	    dot -T$(DOTTYPE) $$i -o $${i%%dot}$(DOTTYPE); done

