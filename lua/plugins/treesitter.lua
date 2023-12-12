return {
  {
    "nvim-treesitter/nvim-treesitter",
    init = function ()
      vim.filetype.add({
        extension = { mdx = 'mdx' }
      })

      vim.treesitter.language.register('mdx', 'markdown')
    end
  }
}
