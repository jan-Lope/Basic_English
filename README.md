# Basic English
Basic English is an English-based controlled language created by Charles Kay Ogden. Basic English is a simplified subset of regular English. 


## Lektionen in deutscher Sprache
Basic English ist ein stark vereinfachtes Englisch basierend auf 850 Wörtern von C. K. Ogden 1937.


### Generierte PDF- und HTML-Dateien

[basic_english.pdf](https://github.com/jan-Lope/Basic_English/blob/gh-pages/basic_english.pdf)  
Generiertes Buch (A4) 

[basic_english-booklet.pdf](https://github.com/jan-Lope/Basic_English/blob/gh-pages/basic_english-booklet.pdf)  
Generieretes Booklet (A5). Bei der Booklet-Version werden jeweils zwei Seiten auf eine A4-Seite abgebildet, so dass ein daraus ein Booklet (A5) erstellt werden kann. Dazu werden erst alle ungeraden Seiten ausgedruckt. Dann legt man die Blätter wieder ins Papierfach zurück und druckt alle geraden Seiten in absteigender Reihenfolge aus. 

[HTML-Version](https://htmlpreview.github.io/?https://raw.githubusercontent.com/jan-Lope/Basic_English/gh-pages/basic_english/index.html)  



### Source Codes

Die PDF- und HTML-Dateien werden automatisch aus der Latex-Datei basic_english.tex per [travis-ci.org](https://travis-ci.org/jan-Lope/Basic_English) generiert.

Die Latex-Datei und die anderen Dateien sind in [Github](https://github.com/jan-Lope/Basic_English) veröffentlicht.  



### Manuelles Generieren

Das manuelle Generieren der PDF- und HTML-Dateien kann unter Ubuntu erfolgen. Dazu sind folgende Pakete zu installieren:


    sudo apt-get install texlive texlive-base texlive-latex-base texlive-extra-utils texlive-binaries texlive-extra-utils texlive-font-utils texlive-pictures texlive-pstricks texlive-latex-extra 
    sudo apt-get install latex2html latex-xcolor npm nodejs coffeescript


Lade alle Dateien in ein Verzeichnis und wechsle in diese Verzeichis. Unter Linux (Ubuntu) starte folgendes Script:


    ./make.sh



[jan Lope](https://jan-lope.github.io)
