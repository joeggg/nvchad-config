local none_ls = require "null-ls"

local opts = {
  sources = {
    require("none-ls.diagnostics.ruff").with { prefer_local = ".venv/bin" },
    none_ls.builtins.diagnostics.mypy.with { prefer_local = ".venv/bin" },
  },
}

return opts
