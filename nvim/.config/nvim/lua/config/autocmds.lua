-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- This is not an autocommand, but a user_command. Didn't know where to create it.
-- run :AICommitMsg from a commit buffer to get an AI generated commit message
vim.api.nvim_create_user_command("AICommitMsg", function()
  local text = vim.fn.system("~/.local/scripts/ai-commit-msg.sh")
  vim.api.nvim_put(vim.split(text, "\n", {}), "", false, true)
end, {})
