# purescript-erl-atom

Create Erlang atoms from Strings for use in accessing native libraries. ADTs compile down to tuples including atoms, but in many cases APIs require e.g. returning a specific atom, which we would otherwise have to do via FFI.
