local options = {
  formatters = {
    ruff_format = {
      command = ".venv/bin/ruff",
      prepend_args = { "format", "--line-length", "100" },
    },
    ruff_fix = {
      command = ".venv/bin/ruff",
      prepend_args = { "--select", "I,F401" },
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    json = { "jq" },
    python = { "ruff_format", "ruff_fix" },
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    go = { "goimports" },
    sql = { "pg_format" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    --   -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
