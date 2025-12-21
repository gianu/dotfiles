return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "auto",
  --       dark_variant = "main",
  --       enable = {
  --         terminal = true,
  --         legacy_highlights = true,
  --         migrations = true,
  --       },
  --       highlight_groups = {
  --         -- Make foam more blue, less green
  --         ["@variable"] = { fg = "#a0c4e0" }, -- Custom blue instead of foam
  --         ["@function"] = { fg = "#a0c4e0" },
  --       },
  --     })
  --
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine",
      colorscheme = "catppuccin-mocha",
    },
  },
}
