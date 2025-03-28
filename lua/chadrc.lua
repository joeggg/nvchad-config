-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  statusline = {
    theme = "vscode_colored",
  },
}

M.base46 = {
  theme = "catppuccin",
  hl_override = {
    NvimTreeGitDirty = { fg = { "orange", -5 } },
    NvimTreeGitNew = { fg = { "green", -5 } },

    ["@comment"] = { fg = { "light_grey", 10 } },
    NonText = { fg = { "grey", 10 }, bg = "NONE" },

    -- Indent blankline Context
    IblScopeChar = { fg = "nord_blue" },
    IndentBlanklineContextChar = { fg = { "blue", -20 } },

    -- Line numbers
    CursorLineNr = { fg = { "blue", -10 } },
    LineNr = { fg = { "light_grey", 0 } },

    TelescopeSelection = { bg = { "nord_blue", -50 } },
    Visual = { bg = { "nord_blue", -50 } },

    DiffAdd = { fg = "NONE", bg = { "nord_blue", -55 } },
    DiffDelete = { fg = "NONE", bg = { "red", -60 } },
    DiffText = { fg = "NONE", bg = { "sun", -65 } },

    -- Diff sidebar highlighting
    -- GitSignsChange = { bg = "blue", fg = "blue" },
    -- GitSignsChangeLn = { bg = "blue", fg = "blue" },
    -- GitSignsChangeNr = { bg = "blue", fg = "blue" },

    -- NonText = {fg = "light_grey"}
  },
}

return M
