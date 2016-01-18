PresTeX
=======

A LaTeX Beamer template for presentations in English and German. 

Setup
-----

Edit the <code>\newcommand{\lang}{ngerman}</code> command to setup the language You write your submission in. Possible options are 
* <code>ngerman</code> and
* <code>english</code>.

Furthermore, edit the <code>config/metainfo.tex</code> file to include
* your name,
* the title and subtitle of Your presentation and 
* the presentation date.

Compiling the Source Code
-------------------------

### texmaker

Use `pdflatex` and `bibtex` to generate a presentation.
If You use texmaker, you can include the following command to automatically compile the sources: 
<code>pdflatex -synctex=1 -interaction=nonstopmode %.tex | bibtex % | pdflatex -synctex=1 -interaction=nonstopmode %.tex 
| pdflatex -synctex=1 -interaction=nonstopmode %.tex</code>

### make

Using make, there are different targets available:

* full: just like the command for texmaker (default)
* latex: only pdflatex
* bibtex
* fast: pdflatex, bibtex, pdflatex
* clean: remove all temporary and auxiliary files, keep pdf
