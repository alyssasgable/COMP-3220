/**
Checks for smallest number in List
if it is the number in parameter
returns true, else returns false
*/

min_list([H|T], min) :-
    min_list(T, H, min).

min_list([], min, min).

min_list([H|T], min0, min) :-
    min1 is min(H, Min0),
    min_list(T, min1, min).
