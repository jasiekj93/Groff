.TL
Groff - równania matematyczne
.AU
Adrian Szczepański
.AI
Brak organizacji/instytucji
.AB
Nienijszy dokument opisuje sposób formatowania
równań matematycznych narzędziem
.BI "Groff"
.AE
.NH
Równania matematyczne
.PP
Do formatowania równań matematycznych służy preprocesor
.I "eqn" "."
Aby z niego skorzystać należy dodać flagę
.B "-e" "."
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
