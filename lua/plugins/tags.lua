return {
  {
    "preservim/tagbar",
    -- "stevearc/aerial.nvim",
    keys = {
      -- { "<leader>tt", "<cmd>AerialToggle right<cr>", desc = "AerialToggle" },
      { "<leader>tt", "<cmd>TagbarToggle<cr>", desc = "TagbarToggle" },
    },
  },
  {
    "stevearc/aerial.nvim",
    keys = {
      { "<leader>tb", "<cmd>AerialToggle right<cr>", desc = "AerialToggle" },
    },
    config = function()
      require("aerial").setup()
    end,
  }
}
