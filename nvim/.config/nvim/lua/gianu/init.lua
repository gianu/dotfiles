require("gianu.set")
require("gianu.lazy_init")
require("gianu.remap")

-- require("gianu.packer")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.termguicolors = true

-- Add filetype support for mdx
vim.filetype.add({
  extension = {
    mdx = 'markdown'
  }
})
