return {
  -- Format on save
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = { git_ignored = false },
      view = { float = { enable = true } },
      renderer = { icons = { glyphs = { git = { unstaged = "!" } } } },
    },
  },
  -- LSPs to download
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "clangd",
        "clang-format",
        "json-lsp",
        "pyright",
        "rust-analyzer",
        "gopls",
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettier",
        "prettierd",
        "eslint-lsp",
        "taplo",
        "sqlls",
        "lemminx",
      },
    },
  },
  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "go",
        "rust",
        "cpp",
        "json",
        "yaml",
        "typescript",
        "javascript",
        "tsx",
        "dockerfile",
        "xml",
      },
    },
  },
  -- Debugging
  {
    "mfussenegger/nvim-dap",
    ft = { "cpp" },
    config = function()
      require "configs.dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.dap-ui"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = { current_line_blame = true },
  },
  -- For viewing git diffs, merge conflicts and file history
  {
    "sindrets/diffview.nvim",
    lazy = false,
    opts = function()
      local actions = require "diffview.actions"
      return {
        keymaps = {
          file_panel = {
            { "n", "j", actions.prev_entry, { desc = "Bring the cursor to the previous file entry" } },
            { "n", "k", actions.next_entry, { desc = "Bring the cursor to the next file entry" } },
          },
        },
      }
    end,
  },
  -- Auto create/open a session
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
      auto_save_enabled = true,
    },
  },
  -- Rust LSP server, also provides inlay hints
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = function()
      return require "configs.rustacean"
    end,
    config = function(_, opts)
      vim.g.rustaceanvim = opts
    end,
  },
  -- Current using for extra python type checking/linting
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    ft = { "python" },
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function()
      return require "configs.none-ls"
    end,
  },
}
