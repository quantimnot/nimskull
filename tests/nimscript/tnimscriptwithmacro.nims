discard """
  target: "e"
  output: "foobar\nnothing\nhallo"
"""
# this test ensures that the mode is reset correctly to repr

import std/macros

macro foobar() =
  result = newCall(ident"echo", newLit("nothing"))

echo "foobar"

let x = 123

foobar()

exec "echo hallo"
