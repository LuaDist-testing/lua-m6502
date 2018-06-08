-- This file was automatically generated for the LuaDist project.

-- -*- Lua -*-
package = "lua-m6502"
version = "1.0-1"

-- LuaDist source
source = {
  tag = "1.0-1",
  url = "git://github.com/LuaDist-testing/lua-m6502.git"
}
-- Original source
-- source = {
--   url = "git://github.com/mooffie/lua-M6502",
--   tag = "1.0-1"
-- }

description = {
  summary = "Emulator for the 6502 microprocessor (using Ian Piumarta's C library)",
  detailed = [[
The 6502 microprocessor powered many of the computers of the late '70s
and early '80s, like Commodore's, Apple's, Atari's, and many others.
]],
  homepage = "http://github.com/mooffie/lua-M6502",
  license = "MIT/X11"
}

dependencies = {
  "lua >= 5.1, < 5.4"
}

build = {
  type = "builtin",
  modules = {
    M6502 = {
      "src/main.c",
      "src/utils.c",
      "src/lutils.c",
      "lib/piumarta/lib6502.c",
    },
    ['M6502.utils'] = "src/lua/utils.lua",  -- Note: if we use a table, instead of string, luarocks will think it's a C module to compile.
  },
  copy_directories = {
    "doc",
    "tests",
  }
}