require "nvchad.mappings"

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Mappings for voyager with APT layout
-- Swap j and k
map({ "n", "v", "s", "o" }, "j", "k")
map({ "n", "v", "s", "o" }, "k", "j")
map({ "n", "v", "s", "o" }, "<C-j>", "<C-w>k")
map({ "n", "v", "s", "o" }, "<C-k>", "<C-w>j")
map({ "n", "v", "s", "o" }, "<C-w>j", "<C-w>k")
map({ "n", "v", "s", "o" }, "<C-w>k", "<C-w>j")
-- Swap n and l
map({ "n", "v", "s", "o" }, "n", "l")
map({ "n", "v", "s", "o" }, "l", "n")
map({ "n", "v", "s", "o" }, "N", "L")
map({ "n", "v", "s", "o" }, "L", "N")
map({ "n", "v", "s", "o" }, "<C-n>", "<C-w>l")
map({ "n", "v", "s", "o" }, "<C-w>n", "<C-w>l")
map({ "n", "v", "s", "o" }, "<C-l>", function()
  vim.cmd "NvimTreeToggle"
end)

-- DEBUGGING

local dap = require "dap"
local dapui = require "dapui"
local dappython = require "dap-python"

map("n", "<leader>b", function()
  dap.toggle_breakpoint()
end, { desc = "Toggle breakpoint" })

map("n", "<leader>db", function()
  dap.continue()
end, { desc = "DAP continue" })

map("n", "<leader>du", function()
  dapui.toggle()
end, { desc = "Toggle DAP UI" })

map("n", "<leader>dp", function()
  dappython.test_method()
end, { desc = "DAP Python test method" })

map("n", "<leader>so", function()
  dap.step_over()
end, { desc = "DAP step over" })

map("n", "<leader>si", function()
  dap.step_into()
end, { desc = "DAP step into" })

map("n", "<leader>st", function()
  dap.step_out()
end, { desc = "DAP step out" })

-- DIFFVIEW

map("n", "<leader>df", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd "DiffviewOpen"
  else
    vim.cmd "DiffviewClose"
  end
end, { desc = "open diff" })

map("n", "<leader>hh", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd "DiffviewFileHistory %"
  else
    vim.cmd "DiffviewClose"
  end
end, { desc = "open file history" })

-- Toggle the vertical lines showing scopes
map("n", "<leader>co", function()
  vim.cmd "IndentBlanklineToggle"
end, { desc = "toggle scope lines" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
