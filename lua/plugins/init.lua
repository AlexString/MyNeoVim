-- lua/plugins/init.lua

-- install plugin manager if needed {{{
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end
-- }}}

return require('packer').startup(function (use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}
  -- Language server protocol
  use {'neovim/nvim-lspconfig'}
  -- code completion
  --use {'hrsh7th/cmp-nvim-lsp'} -- on Requires
  --use {'hrsh7th/cmp-buffer'} -- on Requires
  use {'hrsh7th/nvim-cmp',
    config = "require('plugins.config.cmp')",
    requires = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
    }
  }
  -- awesome icons in the code completion
  use {'onsails/lspkind-nvim'} -- this is configured directly in cmp
  -- treesitter
  use {'nvim-treesitter/nvim-treesitter'}
  -- Plenary
  --use {'nvim-lua/plenary.nvim'} -- on Requires
  -- telescope
  use {'nvim-telescope/telescope.nvim',
    config = "require('plugins.config.telescope')",
    requires = {
      {'nvim-treesitter/nvim-treesitter'},
      {'nvim-lua/plenary.nvim'},
    }
  }
  --[[
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  --]]
  -- lualine
  use {'nvim-lualine/lualine.nvim',
    config = "require('plugins.config.lualine')",
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  --[[ Commenting this plugin.
          I can't make the mappings work
  -- chadtree
  use {'ms-jpq/chadtree',
    branch = 'chad',
    config = "require('plugins.config.chadtree')",
  }   ]]--
  -- dashboard
  use {'glepnir/dashboard-nvim',
    config = "require('plugins.config.dashboard')",
  }
  -- nerdtree
  use {'preservim/nerdtree',
    config = "require('plugins.config.nerdtree')",
  }
end)

