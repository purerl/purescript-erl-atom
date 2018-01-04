module Erl.Atom where

foreign import data Atom :: Type

-- | Create atom from the given String, creating it if necessary. 
-- | For Unicode characters > 255 this requires Erlang/OTP 20.
foreign import atom :: String -> Atom