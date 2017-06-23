#!/bin/bash
###############################################################################
#
clear
#
###############################################################################
#
echo " "
echo " "
echo "########################################################################"
echo " "
echo "start $0"
echo " "
echo "########################################################################"
echo " "

echo "Erstelle dvi-Datei"
echo "------------------------------------------------------------------"
latex basic_english.tex > /dev/null
echo " "

echo "Erstelle Inhaltsverzeichnis"
echo "------------------------------------------------------------------"
latex basic_english.tex > /dev/null
ls -l basic_english.dvi 
echo " "

echo "Erstelle pdf-Datei"
echo "------------------------------------------------------------------"
pdflatex basic_english.tex > /dev/null
ls -l basic_english.pdf 

echo "Erstelle ps-Datei"
echo "------------------------------------------------------------------"
dvips basic_english.dvi > /dev/null 2> /dev/null
ls -l basic_english.ps
echo " "

echo "Erstelle Booklet ps-file" 
echo "------------------------------------------------------------------"
pstops 4:-3L@.7\(21cm,0\)+0L@.7\(21cm,14.85cm\),1L@.7\(21cm,0\)+-2L@.7\(21cm,14.85cm\) basic_english.ps basic_english-booklet.ps > /dev/null 2> /dev/null

echo " "
echo "Erstelle Booklet pdf-file" 
echo "------------------------------------------------------------------"
ps2pdf basic_english-booklet.ps
ls -l basic_english-booklet.*
echo " "

echo "Make html files"
echo "------------------------------------------------------------------"
echo "Configuration file: .latex2html-init"
latex2html basic_english.tex > /dev/null 2> /dev/null
echo " "
ls basic_english
echo " "

echo "Create Build directory and copy the build files in this directory"
rm -rf _build
mkdir -p _build
mv *.pdf _build
mv basic_english _build/


echo "Delete backup files"
rm -f *.synctex.gz
rm -f *.tmp
rm -f tmp.*
rm -f *.swp

echo "Delete core latex/pdflatex auxiliary files"
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

echo "########################################################################"
echo " "
echo "The pdf and html files are in the directory _build."
ls -l _build
echo " "
echo "Printing of the booklet: "
echo "Print the odd numbers first."
echo "Put the paper with the script on the top again in the printer."

echo " "
echo "########################################################################"
echo " "
echo "end $0"
echo " "
echo "########################################################################"
echo " "
echo " "
###############################################################################
# eof
