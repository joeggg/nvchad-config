-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "pastelDark",
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "vscode_colored",
  },
  hl_override = {
    ["@comment"] = { fg = "light_grey", italic = true },
    LspInlayHint = { fg = "light_grey", bg = "NONE" },

    -- Indent blankline Context
    IblScopeChar = { fg = "nord_blue" },
    IndentBlanklineContextChar = { fg = { "blue", -20 } },

    -- Line numbers
    CursorLineNr = { fg = { "blue", -10 } },
    LineNr = { fg = { "light_grey", 0 } },

    -- for darker colour schemes
    -- TelescopeSelection = { bg = { "blue", -40 } },
    -- Visual = { bg = { "blue", -40 } },
    -- for lighter colour schemes
    TelescopeSelection = { bg = { "nord_blue", -50 } },
    Visual = { bg = { "nord_blue", -50 } },

    -- Diff preview changes highlighting
    -- for darker colour schemes
    -- DiffAdd = { fg = "NONE", bg = { "nord_blue", -35 } },
    -- DiffDelete = { fg = "NONE", bg = { "red", -45 } },
    -- DiffText = { fg = "NONE", bg = { "sun", -50 } },
    -- for lighter colour schemes
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
