.TL
Groff - tabele
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje sposób formatowania
tabel z wykorzystaniem narzędzia
.BI "Groff"
.AE
.NH
Tabele
.PP
Do tworzenia table wykorzystywany jest preprocesor
.BI "tbl" .
Wykorzystuje on znaczniki .TS [H] oraz .TE.
Opcja 
.I "H"
powoduje utworzenie podpisu? tabeli.
Składnia tabeli wygląda następująco:
.DS L
 .TS
 options ;
 format .
 data
 .TE
.DE
.NH 2
Opcje
.PP
.IP "center"
wyśrodkowuje tabelę (domyślnie jest wyrównana do lewej);
.IP "expand"
rozszerza tabelę do szerokości strony (zgodnie z marginesami);
.IP "box"
opakowuje tabelę w prostokąt;
.IP "allbox"
opakowuje każdą komórkę w prostokąt;
.IP "doublebox"
opakowuje tabelę w podwójny prostokąt;
.IP "tab (x)"
stosuje znak
.I "x"
zamiast tabulatora do oddzielania lementów tabeli (komórek);
.IP "linesize (n)"
set lines or rules (e.g. from box) in n point type;
.IP "delim (xy)"
stosuje znaki
.I "x i y"
jako ograniczniki równań matematycznych preprocesora
.I "eqn" .
.NH 2
Format
.PP
Sekcja format określa formatowanie wierszy w tabeli.
Każda lina odzwierciedla formatowanie komórek w odpowiadającym mu wierszu.
W przypadku gdy wierszy danych jest więcej niż wierszy formatowania, 
każdy nadmiarowy wiersz przyjmuje styl ostatniego sformatowanego wiersza.
Typową praktyką jest przyjęcie osobnego formatowania wiersza nagłówkowego 
i wierszy danych.
.PP
Formatowanie składa się z linii pojedynczych liter oddzielonych od siebie spacjami bądź tabulatorami.
Każda z kolumn może przyjmować następujące wartości:
.IP "L lub l"
wyrównanie zawartości do lewej;
.IP "R lub r"
wyrównanie zawartości do prawej;
.IP "C lub c"
wyrównanie zawartości do środka;
.IP "N lub n"
komórka numeryczna, z wyrównaniem cyfr do wszystkich komórek tego typu;
.IP "A lub a"
kolumna tekstowa;
.IP "S lub s"
łączony nagłówek. Wpis z poprzedniej kolumny jest kontynuowany w tej kolumnie (oczywiście niedozwolone w pierwszej kolumnie).
.IP "^"
nagłówek rozciągnięty w pionie, tzn. że wpis z poprzedniego wiersza przechodzi dalej w tym wierszu. (oczywiście niedozwolone w pierwszym wierszu tabeli).
.NH
Przykłady
.PP
Oto kilka przykładów tabel:
.TS
box, center,tab(;);
c c c
l l l.
Language;Authors;Runs;on

Fortran;Many;Almost anything
PL/1;IBM;360/370
C;BTL;11/45,H6000,370
BLISS;Carnegie-Mellon;PDP-10,11
IDS;Honeywell;H6000
Pascal;Stanford;370
.TE

.TS
allbox, expand, tab(;);
c s s
c c c
n n n.
AT&T Common Stock
Year;Price;Dividend
1971;41-54;$2.60
2;41-54;2.70
3;46-55;2.87
4;40-53;3.24
5;45-52;3.40
6;51-59;.95*
.TE

.TS
box, tab(;);
c s s
c | c | c
l | l | n.
Major New York Bridges
=
Bridge;Designer;Length
_
Brooklyn;J. A. Roebling;1595
Manhattan;G. Lindenthal;1470
Williamsburg;L. L. Buck;1600
_
Queensborough;Palmer &;1182
; Hornbostel
_
;;1380
Triborough;O. H. Ammann;_
;;383
_
Bronx Whitestone;O. H. Ammann;2300
Throgs Neck;O. H. Ammann;1800
_
George Washington;O. H. Ammann;3500
.TE

.TS
box, tab(;);
cfB s s s.
Composition of Foods
_
.T&
c | c s s
c | c s s
c | c | c | c.
Food;Percent by Weight
\^;_
\^;Protein;Fat;Carbo-
\^;\^;\^;hydrate
_
.T&
l | n | n | n.
Apples;.4;.5;13.0
Halibut;18.4;5.2;. . .
Lima beans;7.5;.8;22.0
Milk;3.3;4.0;5.0
Mushrooms;3.5;.4;6.0
Rye bread;9.0;.6;52.7
.TE

.EQ
delim $$
.EN
. . .
.TS
doublebox, tab(;);
c c
l l.
Name;Definition
.sp
.vs +2p
Gamma;$GAMMA (z) = int sub 0 sup inf t sup {z-1} e sup -t dt$
Sine;$sin (x) = 1 over 2i ( e sup ix - e sup -ix )$
Error;$ roman erf (z) = 2 over sqrt pi int sub 0 sup z e sup {-t sup 2} dt$
Bessel;$ J sub 0 (z) = 1 over pi int sub 0 sup pi cos ( z sin theta ) d theta $
Zeta;$ zeta (s) = sum from k=1 to inf k sup -s ~~( Re~s > 1)$
.vs -2p
.TE