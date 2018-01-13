module Erl.Atom.Symbol where
  
import Data.Symbol (class IsSymbol, SProxy(..), reflectSymbol)
import Erl.Atom as Atom
import Unsafe.Coerce (unsafeCoerce)
  
foreign import data Atom :: Symbol -> Type

atom :: forall s. IsSymbol s => Atom s
atom = unsafeCoerce (Atom.atom (reflectSymbol (SProxy :: SProxy s)))

toAtom :: forall s. IsSymbol s => Atom s -> Atom.Atom
toAtom = unsafeCoerce