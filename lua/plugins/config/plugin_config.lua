-- Telescope

-- ChadTree
Chadtree_settings = {
  xdg = false,
  options = {
    follow = true,
    session = true,
  },
  ignore = {
    -- Extension files to ignore
    name_exact = {},
  },
  view = {
    --open_direction = "right",
    width = 30,
  },
}
vim.api.nvim_set_var("chadtree_settings", Chadtree_settings)
-- Lualine
