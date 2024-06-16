require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

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
