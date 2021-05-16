\# Ustawienia marginesów
.nr PO 3c
.nr LL 15c
.nr HM 3c
.nr FM 3c
.nr PS 13
.nr VS 20
.nr FAM AR
\# Początek dokumentu
.TL
Groff - układ dokumentu
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje zagadnienia
związane z formatowaniem układu stron dokumentów narzędziem
.BI "Groff"
.AE
.NH
Rejestry kontrolne
.PP
W tym rozdziale zostana opisane rejestry kontrolne układu dokumentu.
Ze względów praktycznych powiny one zostać zdefiniowane 
.B "na początku dokumentu" .
Dzięki temu łatwiejsze będzie późniejsze ich odszukanie i modyfikacja.
.PP
Rejestry modyfikowane są makrem
.I ".nr" . 
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
.I "\\n" .
Przykładowo, jeżeli chcielibyśmy wyświetlić wartość poprzednio modyfikowanego rejestru
.I "PO"
należy użyć w tekście umieścić
.DS I
 \\n[PO]
.DE
.NH 2
Jednostki miar
.IP "i"
cale
.IP "c"
centrymetry
.IP "p"
punkty. Jest to jednostka drukarska, wykorzystywan do mierzenia rozmiaru czcionek.
Jeden cal to 72 punkty.
.NH 2
Rejestry marginesów
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
Rejestry paragrafu
.NH 2
Rejestry stopki

