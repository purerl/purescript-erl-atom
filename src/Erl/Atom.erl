-module(erl_atom@foreign).
-export([atom/1]).

atom(S) -> binary_to_atom(S, utf8).
