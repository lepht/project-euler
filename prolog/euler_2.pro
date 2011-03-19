fib :- fib(1,2,0).

fib(P,_,T) :- 
  P >= 4000000,
  write('Total: '), tab(2), write(T).

fib(P,N,T) :-
  P mod 2 =:= 0,
  T_1 is T + P,
  N_1 is P + N,
  fib(N,N_1,T_1).

fib(P,N,T) :-
  write(N), nl,
  N_1 is P + N,
  fib(N,N_1,T).
