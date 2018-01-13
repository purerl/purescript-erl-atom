module Test.Main where

import Prelude

import Erl.Atom (Atom, atom)
import Erl.Atom.Symbol as S

test1 :: Atom
test1 = atom "test"

test2 :: S.Atom "hello"
test2 = S.atom

test3 :: Boolean
test3 = atom "abc" == S.toAtom (S.atom :: S.Atom "abc")