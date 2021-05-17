.ds ABSTRACT ABSTRAKT
.nr PS 12
.ds CH
.ds RF \En[PN]
.TL
Groff - wiele plików źródłowych
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje zagadnienia
związane z tworzeniem dokumentów narzędziem
.BI "Groff"
z wielu plików źródłowych.
.AE
.SH
WSTĘÞ
.PP
Jeżeli piszemy książkę lub artykuł na wiele stron, z pewnością łatwiej będzie podzielić go na mniejsze części.
W ten sposób możemy niezależnie redagować każdy z kawałków osobno.
Łatwiej też umieszczać te fragmenty w innych publikacjach.
.PP
Dodatkowe pliki źródłowe umieszca się podobnie jak makra, przedstawione w dokumencie
.I "01_podstawy" ","
znacznikiem 
.B ".so" "."
W przypadku wielu plików są one dodawane sekwencyjnie, w kolejności ich wywołania np:
.DS I
 .so plik1.ms
 .so plik2.ms
 .so plik3.ms
.DE
.SH
KOLEJNOŚĆ WYKONYWANIA
.PP
Ze względu na to, że preprocesor
.I "preconv"
zawsze wywoływany jest jako pierwszy (opcją
.B "-Kutf8" ")"
, nasze dodatkowe pliki źródłowe nie zostają poddane odpowiedniemu kodowaniu.
Aby to naprawić należy najpierw załączyć nasze pliki źródłowe preprocesorem
.I "soelim" ","
a następnie wywołać resztę groffa. 

Szczegóły znajdują się w pliku 
.I "Makefile" "."

.so 08_wielePlikow_01.ms
.so 08_wielePlikow_02.ms
.so 08_wielePlikow_03.ms