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
    },
  },
}
