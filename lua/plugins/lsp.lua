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
    init = function ()
      require("lspconfig").rust_analyzer.setup({
        standalone = true,
        ['rust-analyzer'] = {
          macros = {
            enabled = true,
          },
          procMacros = {
            enabled = true
          }
        }
      })
    end,
    keys = {
      {
        "<leader>xk",
        function()
          vim.diagnostic.open_float(nil, { focus = false })
        end,
        desc = "DiagnosticFloat",
      },
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
          nls.builtins.diagnostics.mypy,
          -- nls.builtins.diagnostics.ruff,
          -- nls.builtins.formatting.ruff,
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.black,
          nls.builtins.formatting.eslint_d,
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
              "javascript"
            },
          }),
        },
      }
    end,
  },
}
