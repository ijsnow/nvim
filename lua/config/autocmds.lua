-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local copy_path = function(relative)
  local path = vim.fn.expand("%:p")
  if relative then
    path = vim.fn.fnamemodify(path, ":~:.")
  end
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

vim.api.nvim_create_user_command("CopyRelativePath", function()
  copy_path(true)
end, {})

vim.api.nvim_create_user_command("CopyCanonicalPath", function()
  copy_path(false)
end, {})


