-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "pastelDark",
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "vscode_colored",
  },
  hl_override = {
    ["@comment"] = { fg = "light_grey" },
    IblScopeChar = { fg = "nord_blue" },
    IndentBlanklineContextChar = { fg = { "blue", -20 } },
    -- for darker colour schemes
    -- TelescopeSelection = { bg = { "blue", -40 } },
    -- Visual = { bg = { "blue", -40 } },
    -- for lighter colour schemes
    TelescopeSelection = { bg = { "blue", -60 } },
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
    LspInlayHint = { fg = "light_grey", bg = "NONE" },
    -- NonText = {fg = "light_grey"}
  },
}

return M
