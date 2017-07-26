#!/bin/bash
###############################################################################
#
# Make pdf, booklet-pdf and html files for Basic English lessons
# Robert Warnke
#
###############################################################################
#
TEX_FILE="basic_english"
#
echo " "
echo "########################################################################"
echo "start $0"
echo " "
rm -rf *.dvi
rm -rf *.ps
rm -rf *.pdf
echo "make dvi file"
latex $TEX_FILE.tex > /dev/null 
if [ ! -f $TEX_FILE.dvi ]; then
	echo "ERROR"
	exit 1
fi
echo "make table of contents"
latex $TEX_FILE.tex > /dev/null
echo "make pdf file"
pdflatex $TEX_FILE.tex > /dev/null
if [ ! -f $TEX_FILE.pdf ]; then
	echo "ERROR"
	exit 1
fi
echo "make ps file"
dvips $TEX_FILE.dvi > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE.ps ]; then
	echo "ERROR"
	exit 1
fi
echo "make booklet ps file" 
pstops 4:-3L@.7\(21cm,0\)+0L@.7\(21cm,14.85cm\),1L@.7\(21cm,0\)+-2L@.7\(21cm,14.85cm\) $TEX_FILE.ps $TEX_FILE-booklet.ps > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE-booklet.ps ]; then
	echo "ERROR"
	exit 1
fi
echo "make booklet pdf file" 
ps2pdf $TEX_FILE-booklet.ps
if [ ! -f $TEX_FILE-booklet.pdf ]; then
	echo "ERROR"
	exit 1
fi
echo "make html files"
latex2html $TEX_FILE.tex > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE/index.html ]; then
	echo "ERROR"
	exit 1
fi
echo "Create Build directory and copy the pdf and html files in this directory."
rm -rf _build
mkdir -p _build
mv *.pdf _build
if [ ! -f _build/$TEX_FILE.pdf ]; then
	echo "ERROR"
	exit 1
fi
if [ ! -f _build/$TEX_FILE-booklet.pdf ]; then
	echo "ERROR"
	exit 1
fi
mv $TEX_FILE _build/
if [ ! -f _build/$TEX_FILE/index.html ]; then
	echo "ERROR"
	exit 1
fi
echo "make clear"
rm -f *.synctex.gz
rm -f *.tmp
rm -f tmp.*
rm -f *.swp
rm -f *.aux
rm -f *.lof
rm -f *.log
rm -f *.lot
rm -f *.fls
rm -f *.out
rm -f *.toc
rm -f *.fmt
rm -f *.fot
rm -f *.cb
rm -f *.cb2
rm -f *.dvi
rm -f *.ps
rm -f *.eps
rm -f *.pdf
rm -f *.bbl
rm -f *.blg
rm -f *.bcf
rm -f *.blg
rm -f *-blx.aux
rm -f *-blx.bib
rm -f *.run.xml
rm -f *.idx
rm -f *.ilg
rm -f *.ind
rm -f *.ist
echo " "
echo "The pdf and html files are in the directory _build."
ls _build
echo " "
echo "Printing of the booklet: "
echo "Print the odd numbers first."
echo "Put the paper with the script on the top again in the printer."
echo " "
echo "end $0"
echo "########################################################################"
echo " "
###############################################################################
# eof
