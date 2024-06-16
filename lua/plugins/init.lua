return {
  -- Format on save
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
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
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = { current_line_blame = true },
  },
  -- For viewing git diffs, merge conflicts and file history
  {
    "sindrets/diffview.nvim",
    lazy = false,
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
    ft = { "python", "go", "json" },
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function()
      return require "configs.none-ls"
    end,
  },
}
