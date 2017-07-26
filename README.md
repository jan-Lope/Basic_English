# Basic English
Basic English is an English-based controlled language created by Charles Kay Ogden. Basic English is a simplified subset of regular English. 


## Lektionen in deutscher Sprache übersetzt von Robert Warnke
Basic English ist ein stark vereinfachtes Englisch basierend auf 850 Wörtern von C. K. Ogden 1937.

Englisch verfügt über ein sehr reichhaltiges Vokabular. Gute Wörterbücher enthalten über 250.000 Wörter. Dies ist für jemand der Englisch als Fremdsprache lernt nicht gerade ermutigend. Ist es aber notwendig so viele Wörter zu lernen? Wer gut Englisch sprechen will, sollte schon über einen großen Wortschatz verfgen. Aber um sich verständlich zu machen, reicht aber schon eine wesentlich geringere Anzahl von Wörtern.

Zum Beispiel verwendet der Radionsender "Voice of America" ein vereinfachtes Englisch basierend auf 1500 Wörtern. Konrad Adenauer, erster Kanzler der BRD, benutzte in seiner politischen Praxis nachgewiesenermaßen ein Vokabular von nicht mehr als 800 Wörtern. Diese Vereinfachungen sind möglich, da es oft viele Wörter für einen Begriff gibt.

Charles Kay Ogden wählte die 850 für allgemeine Kommunikation wichtigsten englischen Wörter aus. Dies sind übrigens nicht unbedingt die am häufigsten verwendeten Wörter. Ogden versuchte auch mögliche Änderungen der Wortart einzuschränken. Im Englischen gibt es ja viele Wörter, die, bei gleicher Schreibweise, sowohl Substantiv, Verb oder anderes sein können. Ogden nannte diese Plansprache BASIC English.

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
