-- Helpers
local g = vim.g       -- a table to access global variable

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('foce', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- Mappings
g.mapleader = ' '             -- map leader key
map('', '<leader>c', '"+y')   -- copy to clipboard, in any mode
map('i', 'jj', '<esc>')       -- enter normal mode
map('i', '<C-u>', '<C-g>u<C-u>') -- Undo action
map('n','qw',':w<CR>')        -- save file
map('n','qq',':q<CR>')        -- exit file
map('n','tt',':t.<CR>')       -- duplicate line
map('n','dD','d$')            -- delete line starting of cursor
map('n', '<C-l>', '<cmd>noh<CR>')  -- clear highlights

-- Cmp
local cmp = require'cmp'
cmp.setup {
      mapping = {
         ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
         ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
         ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
         ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
         ["<C-j>"] = cmp.mapping.scroll_docs(-4),
         ["<C-k>"] = cmp.mapping.scroll_docs(4),
         ["<C-e>"] = cmp.mapping.close(),
         ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
         },
      },
}
-- Nerdtree
map('n', '<leader>t', ':NERDTreeToggle<CR>') -- Open nerdtree
map('n', '<leader>T', ':NERDTreeFocus<CR>') -- toogle focus on nerdtree 
-- telescope
map('n', '<C-f>', ':Telescope find_files<CR>')       -- find files
map('n', '<C-g>', ':Telescope live_grep<CR>')        -- grep actual file
map('n', '<leader><Tab>', ':Telescope buffers<CR>')  -- open buffers window
-- Re-map telescope keys
local actions = require "telescope.actions"
require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
      }
    }
  }
}
--
