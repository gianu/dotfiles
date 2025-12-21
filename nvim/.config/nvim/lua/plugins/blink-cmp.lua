return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      -- ["<Tab>"] = { "select_next", "fallback" },
      -- ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      menu = {
        auto_show = function(ctx)
          return ctx.mode ~= "cmdline" and not vim.tbl_contains({ ".", ":" }, ctx.trigger.character)
        end,
      },
      list = {
        selection = { preselect = false, auto_insert = true }, -- This is the key setting - prevents auto-selection
      },
    },
    sources = {
      default = { "lsp", "path", "snippets" }, -- Remove "buffer" from here
      -- Or if you want to keep buffer but make it less aggressive:
      -- default = { "lsp", "path", "snippets", "buffer" },
      -- providers = {
      --   buffer = {
      --     min_keyword_length = 4, -- Only show buffer completions after 4+ characters
      --   },
      -- },
    },
  },
}
