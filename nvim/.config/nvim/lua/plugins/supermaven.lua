-- This is a plugin to do code AI completion
-- the code can be accepted using <TAB>
--
return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({})
  end,
}
