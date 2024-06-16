local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local opts = {
  tools = {
    inlay_hints = {
      auto = false,
    },
    hover_actions = {
      auto_focus = true,
    },
  },
  server = {
    on_attach = function(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
      on_attach(client, bufnr)
      vim.lsp.inlay_hint.enable(true)
    end,
    on_init = on_init,
    capabilities = capabilities,
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
          runBuildScripts = true,
        },
        -- Add clippy lints for Rust.
        checkOnSave = {
          allFeatures = true,
          command = "clippy",
          extraArgs = { "--no-deps" },
        },
        procMacro = {
          enable = true,
          ignored = {
            ["async-trait"] = { "async_trait" },
            ["napi-derive"] = { "napi" },
            ["async-recursion"] = { "async_recursion" },
          },
        },
      },
    },
  },
}

return opts
