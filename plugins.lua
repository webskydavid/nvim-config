local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer not installed!")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig'
end)