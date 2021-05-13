\#Komentarz
\#Tak dolaczamy plik z makrami
.so makra
.TL
Tytuł
.AU
Adrian Szczepański
.AI
Moja organizacja/firma
.AB
Jeżeli piszemy artykuł naukowy możemy rówież zawrzeć abstrakt do naszej pracy.
Służą do tego odpowiednie znaczniki.
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
.NH
Równania matematyczne
.PP
Równania matematyczne mogą być następujące:
.EQ
x = 3 + 5
x >= 3 +- 5
.EN
.EQ
x != 3
.EN
.EQ
b sup 2 - 4ac
.EN
.EQ
b sup {2a}
.EN
.EQ
phi = {1 + sqrt 5} over 2
.EN
.EQ
s = sqrt {
{ sum from i=1 to {N + 2} (x sub 1 - x bar ) sup 2 }
over {N - 1}
}
.EN
.EQ
pi = int from -1 to 1 dx over sqrt {1-x sup 2}
.EN
.EQ
delim $$
.EN
.PP
Możemy też umieszczać nasze równania w tekście np. $x = 5 sup 10$.
Aby to zrobić należy w znacznikach .EQ i .EN umieścić definicję słowa "delim".
.EQ
delim off
.EN
Jeżeli chcemy używać potem naszego znaku ogranicznika (np. znaku $)
należy umieścić definicję "delim off".
