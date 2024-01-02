-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use('nvim-lua/plenary.nvim')
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- use('theprimeagen/harpoon')
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional 
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

  use('tpope/vim-commentary')
  -- nvim-tree
  use('nvim-tree/nvim-web-devicons')
  -- use('nvim-tree/nvim-tree.lua')



  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  -- use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  --   require("toggleterm").setup()
  -- end}

  use('github/copilot.vim')

  use ({
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  })

  use('ThePrimeagen/vim-be-good')
  use('f-person/git-blame.nvim')
  -- use({'christoomey/vim-tmux-navigator', lazy = false })
  -- use({'nvim-orgmode/orgmode', config = function()
  --   require('orgmode').setup_ts_grammar()

  --   -- Setup treesitter
  --   require('nvim-treesitter.configs').setup({
  --     highlight = {
  --       enable = true,
  --       additional_vim_regex_highlighting = { 'org' },
  --     },
  --     ensure_installed = { 'org' },
  --   })
  --   -- Setup orgmode
  --   require('orgmode').setup({
  --     org_agenda_files = {'~/.orgfiles/**/*'},
  --     org_default_notes_file = '~/.orgfiles/refile.org',
  --   })
  -- end
  -- })
end)
