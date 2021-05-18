.R1
database bibliografia
accumulate
move-punctuation
.R2
.ds ABSTRACT ABSTRAKT
.ds REFERENCES BIBLIOGRAFIA
.nr PS 12
.ds CH
.ds RF \En[PN]
.TL
Groff - bibliografia
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje zagadnienia
związane z umieszczaniem bibliografii w dokumentach
.BI "Groff"
.AE
.SH
KOLEJNOŚĆ WYKONYWANIA
.PP
W czasie kompilacji dokumentu preprocesor 
.I "preconv" ","
konwertujący kodowanie plików żrodłowych, jest zawsze wywoływany jako pierwszy (opcją
.B "-Kutf8" ")."
Z tego powodu nasze odwołania bibliograficzne nie zostają poddane odpowiedniemu kodowaniu.
Z drugiej strony preprocesor bibliograficzny 
.I "refer"
nie rozpoznaje polskich znaków, przez co uszkadza oryginalny dokument.
Rozwiązaniem jest najpierw wywołać
.I "preconv" ","
na naszym dokumencie, następnie 
.I "refer"
i na końcu groffa znowu z konwersją kodowania (opcja 
.B "-Kutf8" ")." 

Szczegóły znajdują się w pliku 
.I "Makefile" "."
.NH
Plik z bibliografią
.PP
W folderze znajduje się plik o nazwie
.I "bibliografia"
zawierający informacje na temat cytowanych książek i artykułów.
Dane na temat danego dzieła umieszczane są kolejno jedne pod drugim.
Każda informacja rozpoczyna się od makra oznaczającego jeden typ.
Poszczególne dzieła rozdzielane są od siebie co najmniej jedną pustą linią.
Informacje o dostępnych makrach znajdują się w pliku
.I "man"
preprocesora
.I "refer" "."
Najważniejsze z nich to:
.IP "%K"
Słowo kluczowe, po którym możemy odwoływać się do dzieła;
.IP "%A"
Autor. W przypadku kilku autorów, poszczególne imiona i nazwiska umieszczane są w osobnych liniach;
.IP "%T"
Tytuł
.IP "%C"
Miasto wydania;
.IP "%I"
Wydawca;
.IP "%D"
Data wydania;
.IP "%J"
Czasopismo;
.IP "%N"
Numer czasopisma (np. miesięcznik w kwietniu będzie miał numer 4);
.IP "%B"
Książka z której pochodzi fragment (np. opowidanie lub rozdział);
.IP "%P"
Strony fragmentu w książce lub czasopiśmie np. 55-78;
.NH 2
Wskazywanie pliku bibliografii i i inne komendy
.PP
Instrukcje dla preprocesora
.I "refer"
można umieszczać w makrach
.B ".R1" " i"
.B ".R2" "."
Dla zachowania czytelnośći najlepiej jest umieszczać je na początku dokumentu.
Jeżeli chcemy w trakcie dokumentu zmienić sposób umieszczania odnośników, 
możemy dodać drugą parę znaczników.
.PP
Opócz pliku źródłowego bibliografii można umiesczać tam takze instrukcje dotyczące formatowania bibliografii.
Informacje o dostępnych makrach znajdują się w pliku
.I "man"
preprocesora
.I "refer" "."
Najważniejsze z nich to:
.IP "database"
ścieżka do pliku z bibliografią
.IP "accumulate"
Zamiast umieszczać przypis w stopce (domyślnie), umieść bibliografię na końcu dokumentu. 
.IP "move-punctuation"
Przypis górny umieszczaj przed znakiem interpunkcyjnym np. kropką na końcu zdania (nawet jeśli znaczniki znajdują się za zdaniem). 
.NH
Umieszczanie cytatów
.PP
Nawiżanie do źródła umiescza się w makrach 
.B ".[" " i"
.B ".]" "."
.PP
Do cytowania możemy używać dowolnej informacji dotyczącej dzieła.
Może to być nie tylko słowo kluczowe, ale takze autor, tytuł, czasopismo, rok
lub nawet fragment tytułu lub nazwy czasopisma.
Wielkość liter nie ma znaczenia.
.PP
W przypadku umieszczenia nazwiska autora (lub innego słowa kluczowego), który występuje w bibliografii więcej niż raz
refer wybierze najbardziej odpowiadający znacznik (lub pierwszy, który napotka).
.PP
Oto przykład cytowania.
.[
mickiewicz
.]
W tym wypadku pierwszy w bazie danych jest 
.I "Pan Tadeusz" "."
Jeżeli chcemy nawiązać do 
.I "Dziadów"
możemy podać tytuł, fragment tytułu lub autora i fragment.
Tutaj dodatkowo podałem wydawnictwo (trochę dziwne).
.[
mickiewicz Greg
.]
Tu jeszcze inny cytat.
.[
konopnicka65
.]
A tu jeszcze inny.
.[
Jele
.]
Tutaj sam magazyn.
.[
Chip 2003
.]
.NH
Wyświetlanie bibliografii
.PP
Nie zapomnij o zmianie zmiennej wyświeltającej nazwę bibliografii na język polski:
.DS I
 .ds REFERENCES BIBLIOGRAFIA
.DE
.NH 2
Wiele bibliografii w dokumencie
.PP
Jeżeli chcesz umieścić kilka osobnych referencji w dokumencie (np. do każdego rozdziału),
albo po prostu wyświetlić ją w dowolnym miejscu możesz skorzystać z makra:
.DS I
 .[
 $LIST$
 .]
.DE
Należy jednak pamiętać, że polecenie to
.UL "czyści zawartość bufora" "."
Oznacza to, że po jego wykonaniu bufor bibliografii będzie pusty, 
co można wykorzystać np. do zapełniania żródeł w każdym rozdziale od nowa.