parent(john,mary).
parent(mary,tom).

father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).

male(john).
female(mary).

? father(john,tom).
true.

?- mother(mary,tom).
true.

%swi
