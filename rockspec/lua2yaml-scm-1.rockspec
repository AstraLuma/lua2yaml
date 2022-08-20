package = "lua2yaml"
version = "scm-1"
source = {
   url = "git://github.com/AstraLuma/lua2yaml.git",
   branch = "master"
}
description = {
   summary = "A command-line tool to convert Lua to YAML",
   homepage = "http://github.com/AstraLuma/lua2yaml",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.2",
   "yaml"
}
build = {
   type = "none",
   install = {
      bin = {
         ["lua2yaml"] = "lua2yaml"
      }
   }
}
