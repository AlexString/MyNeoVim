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
  use {'wbthomason/packer.nvim'} -- Packer can manage itself
  ----------- THEMES ---------------
  use {'tiagovla/tokyodark.nvim'}
  ------- CODE COMPLETION ----------
  -- language server protocol
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp',
    config = "require('plugins.config.cmp')",
    requires = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
    }
  }
  -- awesome icons in code completion
  use {'onsails/lspkind-nvim'} -- configured directly in cmp.lua
  -- treesitter
  use {'nvim-treesitter/nvim-treesitter'}
  ------------ GIT ----------------
  use { 'airblade/vim-gitgutter' }
  ------ VISUAL HELPING TOOLS -----
  -- nerdtree
  use {'preservim/nerdtree',
    config = "require('plugins.config.nerdtree')",
  }
  -- dashboard
  use {'glepnir/dashboard-nvim',
    config = "require('plugins.config.dashboard')",
  }
  -- lualine
  use {'nvim-lualine/lualine.nvim',
    config = "require('plugins.config.lualine')",
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- telescope
  use {'nvim-telescope/telescope.nvim',
    config = "require('plugins.config.telescope')",
    requires = {
      {'nvim-treesitter/nvim-treesitter'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
    }
  }
  -- autopairs
  use {'jiangmiao/auto-pairs'}
  -- highlight yank
  use {'machakann/vim-highlightedyank'}
  -- fold code blocks
  use {'tmhedberg/SimpylFold'}
  -- shows identation
  use { 'lukas-reineke/indent-blankline.nvim',
    config = "require('plugins.config.indentblankline')",
  }
  --[[------------- forgiven/commented -------------------
          -- FIXME, mappings configuration breaks the file
  -- chadtree
  use {'ms-jpq/chadtree',
    branch = 'chad',
    config = "require('plugins.config.chadtree')",
  }
          -- FIXME, configuration didnt work
  -- bufferline
  use {'akinsho/bufferline.nvim', 
    config = "require('plugins.config.bufferline')",
    requires = 'kyazdani42/nvim-web-devicons',
  }
  --]]
end)
