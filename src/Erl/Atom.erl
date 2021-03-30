-module(erl_atom@foreign).
-export([atom/1, toString/1, eqImpl/2, ordAtomImpl/5]).

atom(S) -> binary_to_atom(S, utf8).

toString(A) -> atom_to_binary(A, utf8).

eqImpl(A1,A2) -> A1 =:= A2.

ordAtomImpl(LT, EQ, GT, X, Y) ->
  if
    X < Y -> LT;
    X > Y -> GT;
    true  -> EQ
  end.
