return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {})
    -- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    vim.cmd("let test#strategy = 'neovim'")
    vim.cmd("let g:test#javascript#mocha#executable = 'pnpm exec mocha'")
    vim.cmd("let g:test#javascript#mocha#options = ''")
  end,
}
