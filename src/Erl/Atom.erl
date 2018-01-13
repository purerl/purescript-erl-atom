-module(erl_atom@foreign).
-export([atom/1, eqImpl/2]).

atom(S) -> binary_to_atom(S, utf8).

eqImpl(A1,A2) -> A1 =:= A2.
