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

map("n", "<leader>b", function()
  vim.cmd "DapToggleBreakpoint"
end, { desc = "Toggle breakpoint" })

map("n", "<leader>db", function()
  vim.cmd "DapContinue"
end, { desc = "Toggle breakpoint" })

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
