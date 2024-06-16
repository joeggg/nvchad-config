-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  nvdash = {
    load_on_startup = true,
  },
  hl_override = {
    Visual = { bg = { "light_grey", -15 } },
    IndentBlanklineContextChar = { fg = { "white", -20 } },
    -- Diff preview changes highlighting
    DiffAdd = { fg = "NONE", bg = { "teal", -25 } },
    DiffDelete = { fg = "NONE", bg = { "red", -45 } },
    DiffText = { fg = "NONE", bg = { "sun", -50 } },
    -- Diff sidebar highlighting
    DiffChange = { fg = "blue" },
    -- LspInlayHint = { fg = "white" },
    -- NonText = {fg = "light_grey"}
  },
}

return M
