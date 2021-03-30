module Test.Main where

import Prelude

import Effect (Effect)
import Erl.Atom (Atom, atom, toString)
import Erl.Atom.Symbol (toAtom)
import Erl.Atom.Symbol as S
import Test.Assert (assert)

test :: Atom
test = atom "test"

hello :: S.Atom "hello"
hello = S.atom

main :: Effect Unit
main = do
  assert $ atom "abc" == S.toAtom (S.atom :: S.Atom "abc")
  assert $ toString test == "test"
  assert $ atom "hello" == toAtom hello 