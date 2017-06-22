#!/bin/bash
###############################################################################
#
clear
#
###############################################################################
#
echo "Erstelle dvi-Datei"
echo "------------------------------------------------------------------"
latex basic_english.tex > /dev/null
echo " "

echo "Erstelle Inhaltsverzeichnis"
echo "------------------------------------------------------------------"
latex basic_english.tex > /dev/null
ls -l latex basic_english.dvi 
echo " "

echo "Erstelle pdf-Datei"
echo "------------------------------------------------------------------"
pdflatex basic_english.tex > /dev/null
ls -l latex basic_english.pdf 

echo "Erstelle ps-Datei"
echo "------------------------------------------------------------------"
dvips basic_english.dvi > /dev/null
ls -l basic_english.ps
echo " "

echo "Erstelle Booklet ps-file" 
echo "------------------------------------------------------------------"
pstops 4:-3L@.7\(21cm,0\)+0L@.7\(21cm,14.85cm\),1L@.7\(21cm,0\)+-2L@.7\(21cm,14.85cm\) basic_english.ps basic_english-booklet.ps

echo " "
echo "Erstelle Booklet pdf-file" 
echo "------------------------------------------------------------------"
ps2pdf basic_english-booklet.ps
ls -l basic_english-booklet.*
echo " "

echo "Make html files"
echo "------------------------------------------------------------------"
echo "Configuration file: .latex2html-init"
latex2html basic_english.tex > /dev/null
ls -lrt basic_english
echo " "


## acroread basic_english-booklet.pdf &
## ghostview -landscape basic_english-booklet.ps &
## kghostview basic_english-booklet.ps &

echo "Print the odd numbers first."
echo "Put the paper with the script on the top again in the printer."


###############################################################################
# eof
