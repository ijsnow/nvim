return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest" },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}

      vim.list_extend(opts.adapters, {
        require("rustaceanvim.neotest"),
        require("neotest-jest"),
      })
    end,
  },
}
