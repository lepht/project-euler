to_add(N) :- N mod 3 =:= 0. 
to_add(N) :- N mod 5 =:= 0. 

answer(1000,T) :- write(T).

answer(I,T) :-
  to_add(I),
  T_1 is T + I,
  I_1 is I + 1,
  answer(I_1,T_1).

answer(I,T) :- 
  I_1 is I + 1,
  answer(I_1,T).

