-- Options file
-- Theme config
vim.g.tokyodark_transparent_background = false
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = true
vim.g.tokyodark_color_gamma = "1.0"
vim.cmd("colorscheme tokyodark")
--
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
opt.clipboard = "unnamedplus"   -- copy paste between vim and everything else
opt.timeoutlen = 500          -- input keys timeout
opt.background = "dark"       -- backwground 
opt.mouse="a"                 -- Enable mouse clicking
opt.autochdir = true          -- working directory will automatically change

vim.wo.cursorline = true
