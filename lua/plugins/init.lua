-- Automatically run :PackerCompile whenever
--  this file is updated.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function (use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Language server protocol
  use 'neovim/nvim-lspconfig'
  -- code completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  -- awesome icons in the code completion
  use 'onsails/lspkind-nvim'
  -- telescope
  use 'nvim-telescope/telescope.nvim'
  -- lualine
  use 'nvim-lualine/lualine.nvim'
  -- chadtree
  use 'ms-jpq/chadtree'
end)

