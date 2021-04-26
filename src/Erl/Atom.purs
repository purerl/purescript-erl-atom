module Erl.Atom (Atom, atom, toString) where

import Prelude

foreign import data Atom :: Type

-- | Create atom from the given String, creating it if necessary. 
-- | For Unicode characters > 255 this requires Erlang/OTP 20.
foreign import atom :: String -> Atom

foreign import toString :: Atom -> String

foreign import eqImpl :: Atom -> Atom -> Boolean

instance atomEq :: Eq Atom where
  eq = eqImpl

instance atomShow :: Show Atom where
  show x = "atom(" <> toString x <> ")"

instance ordAtom :: Ord Atom where
  compare = ordAtomImpl LT EQ GT

foreign import ordAtomImpl
  :: Ordering
  -> Ordering
  -> Ordering
  -> Atom
  -> Atom
  -> Ordering
