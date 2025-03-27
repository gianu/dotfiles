-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- usefull in vertical inserting where <C-c> and <ESC> works differently
vim.keymap.set("i", "<C-c>", "<ESC>")

-- Be a good vim user, do not use directional keys
vim.keymap.set("n", "<Left>", function()
  print("no!")
end)
vim.keymap.set("i", "<Left>", function()
  print("no!")
end)
vim.keymap.set("n", "<Right>", function()
  print("no!")
end)
vim.keymap.set("i", "<Right>", function()
  print("no!")
end)
vim.keymap.set("n", "<Up>", function()
  print("no!")
end)
vim.keymap.set("i", "<Up>", function()
  print("no!")
end)
vim.keymap.set("n", "<Down>", function()
  print("no!")
end)
vim.keymap.set("i", "<Down>", function()
  print("no!")
end)

-- Add error handling to go
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- Move between tabs like moving through buffers
vim.keymap.set("n", "gt", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "gT", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })

-- This command is created in the autocmds file
vim.keymap.set("n", "gm", "<cmd>AICommitMsg<cr>", { desc = "Genarate Commit Msg" })
