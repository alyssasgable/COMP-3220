/**
Count occurrences of a and check if it is equal
to occurrences of b.
Make a fact that says count of a in
list is equal to count of b
*/

/**count_occurrences(List, Occ):-
    findall([X,L], (bagof(true,member(X,List),Xs), length(Xs,L)), Occ).
*/

p(X) :- count(a, X, B), count(b, X, C), B is C.

         count(_, [], 0) :- !.

         count(X, [X|T], N) :-
         count(X, T, N2),
         N is N2 + 1.

         count(X, [Y|T], N) :- X \= Y,
         count(X, T, N).
