lua2yaml – A command-line tool to convert Lua to YAML
=====================================================

See the copyright information in the file named `COPYRIGHT`.

Usage:
------

`lua2yaml [options] < data.lua > data.json`

### Options:

    -h    Print help
    -v    Print script version
    -r    Prefix "return " to the input before loading (default: do not prefix)
    -G    Do not use global environment protection when loading the data
          (default: do use protection)
    -S    Expose Lua environment to the loaded data
          (default: load data into clean environment)

Notes:
------

  1. The lua2yaml by default expects the Lua data to be prefixed with `return`:

      return { foo = 42 }

  If your data is not, as follows:

      { foo = 42 }

  ...then use `-r` option.

  2. Note that while some attempts to sandbox the data are made,
     this tool does not provide any serious protection from malicious code
     (like malformed Lua bytecode, code with infinite loops,
     code that eats memory etc.)

     Do not use on Lua data that you do not trust.

Dependencies
------------

### yaml

All actual work on YAML data is done here.

    sudo luarocks install yaml

Installation:
-------------

1. Install dependencies (see above).

2. Install lua2yaml:

  A. Copy / symlink it somewhere in Lua module path

  -- or --

  B. Install it with LuaRocks (recommended):

  Stable version:

      sudo luarocks install lua2yaml

  Developer version:

      sudo luarocks install \
        lua2yaml \
        --from=http://luarocks.org/repositories/rocks-cvs

  Note that LuaRocks 2.0.2 and below reset executable bit
  on the installed binaries. To ensure that lua2yaml is executable,
  run following command after installation:

      sudo chmod +x $(command -v lua2yaml)

  If you're using LuaRocks 2.0.3 and above, chmod is not needed.
