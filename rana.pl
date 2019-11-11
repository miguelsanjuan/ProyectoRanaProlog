%base de conocimientos
personajes([rana,mosca,arana,rata,gato,perro,hombre,abuela,nieta]).
pronombre(rana,la).
pronombre(arana,la).
pronombre(rata,la).
pronombre(mosca,la).
pronombre(abuela,la).
pronombre(nieta,su).
pronombre(gato,el).
pronombre(hombre,el).
pronombre(perro,el).

%ver si se puede hacer la lista de order sin hechos

siguiente(rana,mosca).
siguiente(mosca,arana).
siguiente(arana,rata).
siguiente(rata,gato).
siguiente(gato,perro).
siguiente(perro,hombre).
siguiente(hombre,abuela).
siguiente(abuela,nieta).
%cambiar esto
%predicado fijo
sentadabjoAgua(rana).


%simbologia 
%pre:
%ps:
%pro:

%inicio de la cancion.
inicio:-personajes([X|Y]),pronombre(X,Pre),siguiente(X,PS),pronombre(PS,Pro),
write("Estaba "),write(Pre),write(" "),write(X),write("  sentada cantando de bajo del agua"),
nl,write("Cuando "),write(Pre),write(" "),write(X),write(" "),write(" se puso a cantar "),nl,
write(" vino "),write(" "),write(Pro),write(" "),write(PS),write(" y "),write(Pre), write(" hizo callar"),nl,cancion(Y).
%reglaas que recorren la lista y escriben la cancion
cancion([X|Y]):-not(X=nieta),nl,quienes(X),nl,write(" la rana que estaba cantando sentada debajo del agua"),nl,
write("Cuando"),pronombre(X,Pre),write(" "),write(Pre),write(" "),write(X),write(" "),write("se puso a cantar"),nl,
write("vino "),siguiente(X,PS),write(" "),pronombre(PS,Pro),
write(Pro),write(" "),write(PS),write(" y "),write(Pre), write(" hizo callar"),nl,cancion(Y).
%rompe el ciclo y hace que termine la cancion
cancion([X|[]]):-nl,write("Fin").
%quien va de quien
quienes(Siguiente):-siguiente(Anterior,Siguiente),
          pronombre(Anterior,PronAnt),
          pronombre(Siguiente,PronSig),
          write(PronSig),write(" "),write(Siguiente),write(" a "),write(PronAnt),
          write(" "),write(Anterior),write(","),nl,
          (   quienes(Anterior);true).









