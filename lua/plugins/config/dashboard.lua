-- Grep
vim.g.dashboard_default_executive = 'telescope'
-- custom footer
vim.g.dashboard_custom_footer = { 'You bastards!!' }

-- Custom header
vim.g.dashboard_custom_header = {
  "                               ",
  "                               ",
  "       ▄▀▀▀▀▀▀▀▀▀▀▄▄          ",
  "     ▄▀▀░░░░░░░░░░░░░▀▄        ",
  "   ▄▀░░░░░░░░░░░░░░░░░░▀▄      ",
  "   █░░░░░░░░░░░░░░░░░░░░░▀▄    ",
  "  ▐▌░░░░░░░░▄▄▄▄▄▄▄░░░░░░░▐▌   ",
  "  █░░░░░░░░░░░▄▄▄▄░░▀▀▀▀▀░░█   ",
  " ▐▌░░░░░░░▀▀▀▀░░░░░▀▀▀▀▀░░░▐▌  ",
  " █░░░░░░░░░▄▄▀▀▀▀▀░░░░▀▀▀▀▄░█  ",
  " █░░░░░░░░░░░░░░░░▀░░░▐░░░░░▐▌ ",
  " ▐▌░░░░░░░░░▐▀▀██▄░░░░░░▄▄▄░▐▌ ",
  "  █░░░░░░░░░░░▀▀▀░░░░░░▀▀██░░█ ",
  "  ▐▌░░░░▄░░░░░░░░░░░░░▌░░░░░░█ ",
  "   ▐▌░░▐░░░░░░░░░░░░░░▀▄░░░░░█ ",
  "    █░░░▌░░░░░░░░▐▀░░░░▄▀░░░▐▌ ",
  "    ▐▌░░▀▄░░░░░░░░▀░▀░▀▀░░░▄▀  ",
  "    ▐▌░░▐▀▄░░░░░░░░░░░░░░░░█   ",
  "    ▐▌░░░▌░▀▄░░░░▀▀▀▀▀▀░░░█    ",
  "    █░░░▀░░░░▀▄░░░░░░░░░░▄▀    ",
  "   ▐▌░░░░░░░░░░▀▄░░░░░░▄▀      ",
  "  ▄▀░░░▄▀░░░░░░░░▀▀▀▀█▀        ",
  " ▀░░░▄▀░░░░░░░░░░▀░░░▀▀▀▀▄▄▄▄▄ ",
  "                               ",
  "                               ",
}
-- dashboard sections
vim.g.dashboard_custom_section = {
  a = {
    description = { '  Find File          ' },
    command = 'Telescope find_files',
  },
  b = {
    description = { '  Recently Used Files' },
    command = 'Telescope oldfiles',
  },
  c = {
    description = { '  Find Word          ' },
    command = 'Telescope live_grep',
  },
  d = {
    description = { ' Change Color sheme  ' },
    command = 'Telescope colorscheme',
  },
  e = {
    description = { '  Settings           ' },
    command = ':e ~/.config/nvim/init.lua',
  },
}
