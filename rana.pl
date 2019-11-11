%Elabore los predicados necesarios para imprimir la canción “Estaba la
% rana sentada &debajo
% del agua”, usando listas para definir a cada uno de los personajes que
% intervienen en esta,
% debe estar registrados sólo como [ rana, mosca, araña …] sin el
% artículo que le corresponde,
% según el género del ítem nombrado. Este debe ser parte de lo que se
% agrega al usar la
% recursividad. Sólo puede haber dos mayúsculas, la del primer personaje
% de cada estrofa y
%usada en la línea “Cuando XX se puso a cantar”

%base de conocimientos
personajes([rana,mosca,araña,rata,gato,perro,hombre,abuela,nieta]).
pronombre(rana,la).
pronombre(araña,la).
pronombre(rata,la).
pronombre(mosca,la).
pronombre(abuela,la).
pronombre(nieta,la).
pronombre(gato,el).
pronombre(hombre,el).
pronombre(perro,el).
siguiente(rana,mosca).
siguiente(mosca,araña).
siguiente(araña,rata).
siguiente(rata,gato).
siguiente(gato,perro).
siguiente(perro,hombre).
siguiente(hombre,abuela).
siguiente(abuela,nieta).
sentadabjoAgua(rana).
%inicio de la cancion.
inicio:-personajes([X|Y]),pronombre(X,Pre),siguiente(X,PS),pronombre(PS,Pro),
write("Estaba "),write(Pre),write(" "),write(X),write("  sentada de bajo del agua"),
nl,write("Cuando "),write(Pre),write(" "),write(X),write(" se puso a cantar "),nl,
write(" vino "),write(" "),write(Pro),write(" "),write(PS),write(" y "),write(Pre), write(" hizo callar"),
write(Y),nl,cancion(Y).
%reglaas que recorren la lista y escriben la cancion
cancion([X|Y]):-not(X=nieta),nl,quienes(X),nl,sentadabjoAgua(R),write(""),pronombre(R,P),write(P),
write(" "),write(R),write(" que estaba sentada debajo del agua"),nl,
write("Cuando"),pronombre(X,Pre),write(" "),write(Pre),write(" "),write(X),write("se puso a cantar"),nl,
write("vino "),siguiente(X,PS),write(" "),pronombre(PS,Pro),
write(Pro),write(" "),write(PS),write(" y "),write(Pre), write(" hizo callar"),write(Y),nl,cancion(Y).
cancion([X|[]]):-nl,write("Tan, Tan").
%quien va de quien
quienes(Siguiente):-siguiente(Anterior,Siguiente),
          pronombre(Anterior,PronAnt),
          pronombre(Siguiente,PronSig),
          write(PronSig),write(" "),write(Siguiente),write(" a "),write(PronAnt),
          write(" "),write(Anterior),write(","),nl,
          (   quienes(Anterior);true).



          %estaba(X):-personajes([X|[T|_]]),personajes([X|P]),write("Estaba "),write(" "),prefijo(X,Y),write(Y),
         % write(" "),sentadabjoAgua(R), write(R),write(" sentada debajo del agua"),
         %nl,write(" Cuando "),write(Y),write(" "),write(X),write(" se puso a cantar"),
         %write(" vino "),prefijo(T,M),write(M),write(" "),write(T),write(" y"),write(" "),
         %write(" hizo callar"),
		 %nl,
		 %retract(personajes([_|_])),
         %assert(personajes(P)),
		 %estaba1(P).

%estaba1([]):-write("se acabo la cancion").

%estaba1([X|P]):-
          %personajes([X|[T|_]]),personajes([X|P]),prefijo(X,Genero),prefijo(T,GeneroSig),
          %write(" Cuando "),write(" "),write(Genero),write(" "),write(X),write(" se puso a cantar"),
          %write(" vino "),write(GeneroSig),write(" "),write(T),write(" y"),write(" "),
          %write(" hizo callar"),nl,
		  %retract(personajes([_|_])),
          %assert(personajes(P)),
          %estaba1(P).



% estaba(X):-not(X=rana),personajes([_|[_|[X|[T|_]]]]),write("Estaba
% "),write(" "),write(" "),sentadabjoAgua(R),write(R),write(" sentada
% debajo del agua"),nl,write(" Cuando "),write(" "),write(X),write(" se
% puso a cantar"),write(" vino "),write(" "),write(" "),write(T),write("
% y"),write(" "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[X|[T|_]]]]]),write("Estaba
% "),write(" "),sentadabjoAgua(R),write(R),write(" sentada debajo del
% agua"),nl,write(" Cuando "),write(" "),write(X),write(" se puso a
% cantar"),write(" vino "),write(" "),write(T),write(" y"),write("
% "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[_|[X|[T|_]]]]]]),write("Estaba
% "),prefijo(R,N),write(N),write(" "),sentadabjoAgua(R),write(R),write("
% sentada debajo del agua"),nl,write(" Cuando "),prefijo(X,Y),write("
% "),write(Y),write(" "),write(X),write(" se puso a cantar"),write(" vino
% "),prefijo(T,M),write(M),write(" "),write(" "),write(T),write("
% y"),write(" "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[_|[_|[X|[T|_]]]]]]]),write("Estaba
% "),write(" "),sentadabjoAgua(R),write(R),write(" sentada debajo del
% agua"),nl,write(" Cuando "),write(" "),write(X),write(" se puso a
% cantar"),write(" vino "),write(" "),write(T),write(" y"),write("
% "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[_|[_|[_|[X|[T|_]]]]]]]]),write("Estaba
% "),write(" "),sentadabjoAgua(R),write(R),write(" sentada debajo del
% agua"),nl,write(" Cuando "),write(" "),write(X),write(" se puso a
% cantar"),write(" vino "),write(" "),write(T),write(" y"),write("
% "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[_|[_|[_|[_|[X|[T|_]]]]]]]]]),write("Estaba
% "),write(" "),sentadabjoAgua(R),write(R),write(" sentada debajo del
% agua"),nl,write(" Cuando "),write(" "),write(X),write(" se puso a
% cantar"),write(" vino "),write(" "),write(T),write(" y"),write("
% "),write(" hizo callar"),nl,estaba(T).

% estaba(X):-not(X=rana),personajes([_|[_|[_|[_|[_|[_|[_|[_|[X|[T|_]]]]]]]]]]),write("Estaba
% "),write(" "),sentadabjoAgua(R),write(R),write(" sentada debajo del
% agua"),nl,write(" Cuando "),write(" "),write(X),write(" se puso a
% cantar"),write(" vino "),write(" "),write(T),write(" y"),write("
% "),write(" hizo callar"),nl,estaba(T).




% estaba(X):-personajes([X|[T|_]]),write("Estaba ") , write(rana),write("
% sentada debajo del agua"), write("Cuando "),write(X),write("Sepuso a
% cantar"),estaba(T).
%estaba([]).
%













