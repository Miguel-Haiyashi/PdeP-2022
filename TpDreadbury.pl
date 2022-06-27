% 1a)
viveEnLaMansionDreadbury(tiaAgatha).
viveEnLaMansionDreadbury(mayordomo).
viveEnLaMansionDreadbury(charles).

odiaA(charles, mayordomo).
odiaA(tiaAgatha, charles).
odiaA(mayordomo, charles).

esMasRicoQueTiaAgatha(Persona):-
    not(odiaA(mayordomo, Persona)),
    viveEnLaMansionDreadbury(Persona).

mata(Persona):-
    odiaA(Persona, tiaAgatha),
    esMasRicoQueTiaAgatha(Persona).

/* 1b)

?- mata(Persona).  
false.
*/

% 2a)
odiaAMilhouse(Persona):-
    odiaA(Persona, milhouse).

charlesOdiaA(Persona):-
    odiaA(charles, Persona).

odiaATiaAgatha(Persona):-
    odiaA(Persona, tiaAgatha).

elMayordomoOdiaA(Persona):-
    odiaA(mayordomo, Persona).


/* 2b)
 Consultas 

?- odiaAMilhouse(Persona).
false.

?- charlesOdiaA(Persona).  
Persona = mayordomo.

?- odiaATiaAgatha(Persona).
false.

?- odiaA(Odiador, Odiado).
Odiador = charles,
Odiado = mayordomo ;
Odiador = tiaAgatha,
Odiado = charles ;
Odiador = mayordomo,
Odiado = charles.

?- elMayordomoOdiaA(charles). 
true.
*/