.TL
Groff - obrazki
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje sposób wstawiania
obrazków do dokumentów  z wykorzystaniem narzędzia
.BI "Groff"
.AE
.NH
Obrazki
.PP
Obrazki umieszczamy za pomocą makra
.I ".PSFPIC" .
Makro to posiada następujące opcje:
.IP "-L"
wyrównuje obrzek do lewej;
.IP "-C"
wyśrodkowuje obrazek;
.IP "-R"
wyrównuje obrzek do prawej;
.IP "-I n"
obrazek jest "wcięty" względem tekstu o parametr
.I "n" .
Oprócz tego po nazwie pliku możemy podać preferowaną szerokość i wysokość nazego obrazka.
Pełńa składnia makra wygląda następująco:
.DS I
 .PSPIC [-L|-R|-C|-I n] file [width [height]]
.DE
.PSPIC -C images/mops.ps
.NH
Konwertowanie obrazów
.PP
Przed umieszczeniem obrazków należy je wcześciej skonwertować na typ
.I "postscript"
poleceniem
.BI "convert" .
Składnia wygląda następująco:
.DS C
convert plik.jpeg plik.ps
.DE
.NH 2
Polityka bezpieczeństwa
.PP
Ze względów bezpieczeństwa domyślnie program 
.BI "ImageMagick"
posiada zablokowaną możliwość konwertowania na typ
.I "postscript" .
Aby to zmienić należy zmodyfikować plik konfiguracyjny
.I "/etc/ImageMagick-6/policy.xml" .
Na samym dole znajduje się wiersz:
.DS I
<policy domain="coder" rights="none" pattern="PS" />
.DE
Należy zmienić go na:
.DS I
<policy domain="coder" rights="read|write" pattern="PS" />
.DE
