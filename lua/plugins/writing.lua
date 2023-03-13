return {
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>zm", "<cmd>ZenMode<cr>", desc = "ZenMode" },
    },
  },
  -- {
  --   "nvim-neorg/neorg",
  --   build = ":Neorg sync-parsers",
  --   opts = {
  --     load = {
  --       ["core.defaults"] = {}, -- Loads default behaviour
  --       ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
  --       ["core.norg.dirman"] = { -- Manages Neorg workspaces
  --         config = {
  --           workspaces = {
  --             notes = "~/notes",
  --           },
  --         },
  --       },
  --     },
  --   },
  --   dependencies = { { "nvim-lua/plenary.nvim" } },
  -- },
}
