feasible(NOSOLOGICAL,P,DUR,OR,DAY) :- registration(NOSOLOGICAL, P, SP, _, DUR, _, _, _), mss(OR,_,DAY).
{x(N,P,DUR,OR,DAY) : feasible(N,P,DUR,OR,DAY)} 1 :- feasible(N,_,DUR,_,_).
:- mss(OR, _, DAY), #sum {DUR, NOSOLOGICAL : x(NOSOLOGICAL, _, DUR, OR, DAY)} > timeDisp.
stay(NOSOLOGICAL, SPECIALTY, DD) :- x(NOSOLOGICAL, _, _, _, DAY), registration(NOSOLOGICAL, _, SPECIALTY, "Ordinario", _, 0, D1, D2), D1+D2 > 0, DD = DAY-D1..DAY+D2.
:- beds(N, SPECIALTY, DAY), #count {NOSOLOGICAL : stay(NOSOLOGICAL, SPECIALTY, DAY)} > N.
:- givenSchedule(NOSOLOGICAL, DAY, OR), not x(NOSOLOGICAL, _, _, OR, DAY).