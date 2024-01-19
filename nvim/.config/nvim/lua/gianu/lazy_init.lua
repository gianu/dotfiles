local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup("gianu.lazy")
require("lazy").setup({ 
  spec = "gianu.lazy", 
  change_detection = { notify = false } 
})

-- Start lazy.nvim
-- require("lazy").setup({
--   use {
--     "ThePrimeagen/harpoon",
--     branch = "harpoon2",
--     requires = { {"nvim-lua/plenary.nvim"} }
-- }
--   use {
--   'VonHeikemen/lsp-zero.nvim',
--   branch = 'v2.x',
--   requires = {
--     -- LSP Support
--     {'neovim/nvim-lspconfig'},             -- Required
--     {'williamboman/mason.nvim'},           -- Optional
--     {'williamboman/mason-lspconfig.nvim'}, -- Optional 
--     -- Autocompletion
--     {'hrsh7th/nvim-cmp'},     -- Required
--     {'hrsh7th/cmp-nvim-lsp'}, -- Required
--     {'L3MON4D3/LuaSnip'},     -- Required
--   }
-- }

-- }, {})
