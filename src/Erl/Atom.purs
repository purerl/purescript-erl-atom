module Erl.Atom (Atom, atom) where

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
  show atom = "atom(" <> toString atom <> ")"
