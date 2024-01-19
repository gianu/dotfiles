return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({})

    vim.keymap.set("n", "<C-\\>", function ()
      require("toggleterm").toggle()
    end)

    vim.keymap.set("t", "<C-\\>", function ()
      require("toggleterm").toggle()
    end)
  end
}
