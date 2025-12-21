return {
  {
    "conform.nvim",
    opts = {
      formatters = {
        prettier = {
          env = {
            PRETTIER_LEGACY_CLI = "1",
          },
        },
      },
      format_on_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return {
          timeout_ms = 500,
          lsp_fallback = true,
          async = false, -- Set to false for format_on_save
        }
      end,
      format_after_save = {
        lsp_fallback = true,
        async = true, -- This run sync after save
      },
    },
  },
}
