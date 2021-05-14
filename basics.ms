\# Tak się pisze komentarz bez wpływu na dokument
\" a taki komentarz powoduje powstanie odstępu w dokumencie
.so makra
.TL
Groff - podstawy
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje podstawowe zagadnienia
związane z formatowaniem dokumentów narzędziem
.BI "Groff"
.AE
.NH
Rozdział pierwszy
.PP
Mój pierwszy paragraf.
Tutaj tekst idzie dalej w tej samej linii.
Tutaj też.

Ale tutaj już będzie się zaczyanł od nowej linii
.PP
Jeżeli chcemy zastosować wcięcie to musimy utworzyć paragraf.

.LP
Istnieje też paragraf bewz wcięcia.

.XP
Lub też taki, gdzie wcięte są wszystkie linie, oprócz pierwszej.
Wtedy też wyglada to mniej więcej tak jak tutaj.

.NH
Rozdział drugi
.NH 2
Podrozdział rozdziału drugiego
.PP
Możemy też oczywiście
.B "pogrubić"
nasz teskt, napisać go
.I "kursywą"
lub także
.BI "dwa na raz".
Co jeżeli chcielibyśmy napisać pogrubionym w
.B "nawiasach" )? (
Z innych ciekawostek można też oczywiście
.UL "podkreślić"
tekst lub nawet umieścić go
.BX "w pudełku" .
Inne modyfikacje to 
.R "typ regularny"
.CW "o stałej szerokości"
.LG 
powiększony tekst
.LG 
bardziej powiększony tekst
.LG 
jeszcze bardziej powiększony tekst
.NL 
i normalny tekst
.SM 
pomniejszony tekst
.NL 
znowu normalny tekst
\*{
To jest przypis górny
\*}

.RS
.PP
Nasz paragraf może być także wcięty bardziej względem oryginalnego formatowania.
Nie ma nic w tym złego. 
.RE
.NH 3
Listy
.PP
W Groffie oczywiście tworzymy także listy
.BL
Pierwszy punkt
.BL
Drugi punkt
.BL
No i trzeci
.PP
Jeżeli chcemy możemy używać także numeracji bądź własnych punktorów np:
.IP "Słowo"
Definicja słowa
.IP "Inne słowo"
Defifnicja innego słowa. Definicja ta może być bardzo długa. 
Tak długa, że zajmie więcej niż jedną linię.
Wtedy też takie wcięcie między słowem, a definicją ułatwia czytanie.

.QS
Jeżeli lubisz cytować słowa innych, to znaczniki
.I ".QS i .QE"
mogą się okazać dla ciebie przydatne

Paulo Cohello
.QE