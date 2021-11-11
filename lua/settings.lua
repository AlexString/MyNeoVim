-- Options file
--cmd 'colorscheme desert'    -- set colorscheme
local opt = vim.opt   -- to set options
opt.expandtab = true          -- use spaces instead of tabs
opt.hidden = true             -- enable background buffers
opt.relativenumber = true     -- show relative line numbers
opt.scrolloff = 4             -- lines of context
opt.shiftwidth = 2            -- size of an indent
opt.smartcase = true          -- do not ignore case with capitals
opt.smartindent = true        -- insert indents automatically
opt.splitright = true         -- put new windows right of current
opt.termguicolors = true      -- true color support
opt.wildmode = {'list', 'longest'} -- command-line completion mode
opt.wrap = false              -- disable line wrap
