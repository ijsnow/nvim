return {
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      autoformat = false,
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.stylua,
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.black,
          nls.builtins.formatting.eslint,
          nls.builtins.formatting.prettier.with({
            filetypes = {
              "css",
              "scss",
              "less",
              "html",
              "json",
              "jsonc",
              "yaml",
              "markdown",
              "markdown.mdx",
              "graphql",
              "javascript",
            },
          }),
        },
      }
    end,
  },
}
