\# Ustawienia marginesów
.nr PO 3c
.nr LL 15c
.nr HM 3c
.nr FM 3c
.nr PS 13
.nr VS 20
.fam AR
.ds CH
.ds RF -\En[PN]-
.ds ABSTRACT ABSTRAKT
.ds REFERENCES BIBLIOGRAFIA
.ds TOC Spis treści
.ds MONTH1 stycznia
.ds MONTH2 lutego
.ds MONTH3 marca
.ds MONTH4 kwietnia
.ds MONTH5 maja
.ds MONTH6 czerwca
.ds MONTH7 lipca
.ds MONTH8 sierpnia
.ds MONTH9 września
.ds MONTH10 października
.ds MONTH11 listopada
.ds MONTH12 grudnia


\# Początek dokumentu
.DA
.TL
Groff - układ dokumentu
.AU
Adrian Szczepański\**
.FS
To właśnie ja
.FE
.AI
Brak organizacji/instytucji\**
.FS
Jestem wolnym strzelcem
.FE
.AB
Nienijszy dokument opisuje zagadnienia
związane z formatowaniem układu stron dokumentów narzędziem
.BI "Groff"
.AE
.NH
Rejestry kontrolne
.XS
Rejestry kontrolne
.XE
.PP
W tym rozdziale zostana opisane rejestry kontrolne układu dokumentu.
Ze względów praktycznych powiny one zostać zdefiniowane 
.B "na początku dokumentu" .
Dzięki temu łatwiejsze będzie późniejsze ich odszukanie i modyfikacja.
.PP
Rejestry modyfikowane są makrem
.I ".nr" "."
Nastepnie podawana jest nazwa rejestru i wartość jaką chcemy przypisać np.:
.DS I
 .nr PO 2c
.DE
przypisuje do rejestru
.I "PO" 
wartość 2c (ustawia lewy margines na 2 centymetry).
.PP
Wartości zmiennych mogą być takze wyświetlane w tekście.
W tym celu używamy znaku specjalnego
.I "\\n" "."
Przykładowo, jeżeli chcielibyśmy wyświetlić wartość poprzednio modyfikowanego rejestru
.I "PO"
należy użyć w tekście umieścić
.DS I
 \\n[PO]
.DE
.NH 2
Jednostki miar
.XS
Jednostki miar
.XE
.IP "i"
cale
.IP "c"
centrymetry
.IP "p"
punkty. Jest to jednostka drukarska, wykorzystywan do mierzenia rozmiaru czcionek.
Jeden cal to 72 punkty.
.NH 2
Rejestry marginesów
.XS
Rejestry marginesów
.XE
.IP "PO"
Definiuje offset strony (lewy margines).
Nie istnieje rejestr definiujący prawy margines.
Odpowiednia kombinacja wartości rejestrów.
.I "PO"
i
.I "LL"
definiuje prawy margines. 
.IP "LL"
Definiuje długość linii tekstu.
.IP "LT"
Definiuje szerokość tytułu.
.IP "HM"
Definiuje margines górny.
.IP "FM"
Definiuje margines dolny.
.NH 2
Rejestry tekstu
.XS
Rejestry tekstu
.XE
.IP "PS"
Definiuje domyślny rozmiar tekstu w punktach.
Wartości większe od 1000 są automatycznie dzielone przez 1000
aby otrzymać część ułamkową np. wartość 10250 traktowana jest jako 10.25.
.IP "VS"
Definiuje odstęp pomiędzy liniami.
Przykładowo dla czcionki o rozmiarze 12p i interlinii 1.5, wartość rejestru
.I "VS"
wynosi 18p.
Wartości większe od 1000 są automatycznie dzielone przez 1000
aby otrzymać część ułamkową np. wartość 10250 traktowana jest jako 10.25.
.IP "FAM"
Defiuje rodzinę czcionek wykorzystywaną w dokumencie.
.NH 2
Rejestry akapitu
.XS
Rejestry akapitu
.XE
.IP "PI"
Definiuje głębokość początkowego wcięcia akapitu (makra
.I ".PP" ")."
.IP "PD"
Definiuje odstęp pomiędzy paragrafami.
.IP "QI"
Definiuje wcięcie po obudwu stronach cytatu (makra 
.I "QP" ", "
.I "QS" " i "
.I "QE" ")."
.IP "PORPHANS"
Definiuje minimalną liczbę linii akapitu, 
które powinny być utrzymywane razem, aby uniknąć powstawania 
szewców (pojedynczych wierszy na początku następnej strony).
.IP "HORPHANS"
Definiuje minimalną liczbę linii akapitu, 
które powinny być utrzymywane razem z nagłówkiem (makro 
.I ".NH" ")."
Pozwala to na uniknąć sytuacji, gdzie nagłówek pozostaje na dole strony.
lecz akapit rozpoczyna się na następnej.
.NH 2
Rejestry stopki
.XS
Rejestry stopki
.XE
.IP "FL"
Definiuje długość stopki.
.IP "FI"
Definiuje wcięcie stopki.
.IP "FF"
Definiuje format przypisów dolnych w stopce.
.RS
.IP "0"
Wyświetl numer przypisu jako indes górny. 
Zastosuj wcięcie (domyślnie).
.IP "1"
Wyświetl numer przypisu zakończony kropką.
Zastosuj wcięcie.
.IP "2"
Podobnie jak
.I "1"
lecz bez wcięcia.
.IP "3"
Podobnie jak
.I "1"
lecz numer przypisu odpowiada numerowi akapitu.
.RE
.NH
Nagłówki i stopki
.XS
Nagłówki i stopki
.XE
Do definiowania własnych nagłówków służą ciągi znaków:
.DS I
 \\*[LH]
 \\*[CH]
 \\*[RH]
.DE
(odpowiednio część lewa środkowa i prawa).

Treść własnych stopek definiujemy przy pomocy stringów:
.DS I
 \\*[LF]
 \\*[CF]
 \\*[RF]
.DE

Przykładowo, jeżeli chcielibyśmy przenieść umiejscowienie numeru strony (tak jak w tym dokumencie)
możemy zastosować następujący kod:
.DS I
 .ds CH
 .ds RF -\\En[PN]-
.DE
W ten sposób podmieniamy centralny tekst nagłówka na pusty string, a także
umiesczamy zmienną
.I "PN"
w prawej części stopki.
.PP
W przypadku dokumentów wymagających oddzielnego formatowania
nagłówków i stopek dla stron parzystych i nieparzystych wykorzystywane
są makra:
.DS I
 .OH 'lewa'środek'prawa'
 .EH 'lewa'środek'prawa'
 .OF 'lewa'środek'prawa'
 .EF 'lewa'środek'prawa'
.DE
(odpowiednio nagłówek nieparzysty, patrzysty; stopka nieparzysta, parzysta).
Definicje umieszczane są pomiędzy znakami
.I "\'" .
.NH 2
Przypis dolny
.XS
Przypis dolny
.XE
.PP
Aby umieścić przypsis dolny umiesczamy w tekście znak specjalny.
Nasßepnie umieszczamy definicję z znacznikach
.I ".FS"
i
.I ".FE" ". "
Numeracja następuje zgodnie z kolejnośćią wystąpienia znaku specjalnego i
makr. Styl przypaisu jest zgodny z wartością rejestru
.I "FF" "."
.NH
Wiele kolumn
.XS
Wiele kolumn
.XE
.PP
Aby zmienić liczbę kolumn w których wyśiwetlany jest tekst należy skorzystać z opisanych poniżej makr.
Oddziałyuwanie makra dotyczy tekstu występujacego po nim. 
Oznacza to, że na jednej stronie może znajdować się tekst zarówno w jednej jak i w wielu kolumnach. 
.IP ".1C"
Tryb pojedynczej kolumny
.IP ".2C"
Tryb dwóch kolumn
.IP ".MC [szerokość [odstęp]]"
Tryb wielu kolumn. Ich liczba zależna jest od parametru szerokości i odstępu między kolumnami.
Brak tych parametrów oznacza przyjęcie trybu dwóch kolumn.
.NH
Spis treści
.XS
Spis treści
.XE
.PP
Do utworzenia pozycji w spisie treści wykorzystywane są następujące makra:
.DS I
 .XS [strona]
 .XA [strona]
 .XE
.DE
Pary znaczników
.I ".XS" " i "
.I ".XE"
służą do oznaczania wpisu do spisu. 
Numer strony wypełniany jest autoamtycznie, lecz istnieje możliwość jego zmiany, poprzez podanie argumentu
.I "[strona]" .
Makro 
.I ".XA"
służy do określania dodatkowych wpisów podległych.
.PP
Do wygenerowania spisu treści służą następujące makra:
.IP ".TC [nie]"
Drukuje spis treści na nowej stronie, rozpoczynając numerowanie od 1.
Argument
.I "[nie]"
określa czy drukować też napis przed spisem.
.IP ".PX [nie]"
Drukuje spis treści na nowej stronie, korzystając z aktualnej sekwencji numeracji stron.
Argument
.I "[nie]"
określa czy drukować też napis przed spisem.

Należy jednak pamiętać, że po wygenerowaniu wpisu, pamięć cache jest czyszczona i przy
następnej próbie jego wygenerowania utworzony zostanie pusty spis treści.
Z tego powodu spis ten musi znajdować się na końcu dokumentu.
.NH
Rejestry nazw
.XS
Rejestry nazw
.XE
.PP
Istnieje możliwość zdefiniowania własych łańcuchów znaków, które
.I "groff"
umieszcza automatycznie jak np. miesiace w datach czy słowo "abstrakt".
.IP "REFERENCES"
Napis umieszczany na początku bibliografii
.IP "ABSTRACT"
Napis umieszcany na początku abstraktu
.IP "TOC"
Napis umieszczany na początku spisu treści
.IP "MONTHx"
Nazwy miesięcy. Wartość
.I "x"
przyjmuje wartość od 1 do 12.
.TC


