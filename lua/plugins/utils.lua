return {
  "vim-scripts/BufOnly.vim",
  {
    "easymotion/vim-easymotion",
    init = function()
      vim.cmd("map ,, <Plug>(easymotion-prefix)")
    end,
  },
  {
    "monaqa/dial.nvim",
    -- lazy-load on keys
    -- mode is `n` by default. For more advanced options, check the section on key mappings
    -- keys = {
    -- { "<C-a>", { "<C-x>", mode = "n" } },
    -- },
    init = function()
      local augend = require("dial.augend")
      require("dial.config").augends:register_group({
        -- default augends used when no group name is specified
        default = {
          augend.integer.alias.decimal, -- nonnegative decimal number (0, 1, 2, 3, ...)
          augend.integer.alias.hex, -- nonnegative hex number  (0x01, 0x1a1f, etc.)
          augend.date.alias["%Y/%m/%d"], -- date (2022/02/19, etc.)
          augend.constant.alias.bool, -- boolean value (true <-> false)
          augend.constant.new{ elements = {"True", "False"} }, -- python
        },
      })

      local map = require("dial.map")

      vim.keymap.set("n", "<C-a>", map.inc_normal(), { noremap = true })
      vim.keymap.set("n", "<C-x>", map.dec_normal(), { noremap = true })
      vim.keymap.set("v", "<C-a>", map.inc_visual(), { noremap = true })
      vim.keymap.set("v", "<C-x>", map.dec_visual(), { noremap = true })
      vim.keymap.set("v", "g<C-a>", map.inc_gvisual(), { noremap = true })
      vim.keymap.set("v", "g<C-x>", map.dec_gvisual(), { noremap = true })
    end,
  },
}
