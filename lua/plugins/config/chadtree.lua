-- ChadTree
Chadtree_settings = {
  ["xdg"] = false,
  ["keymap.quit"] = "q",
  ["keymap"] = {
    --["quit"] = ["q"],
    --["bigger"] = ["+","="],
    --["smaller"] = ["-","_"],
    --["refresh"] = ["<c-r"],
  },
  ["view"] = {
    ["open_direction"] = "right",
  },
}
vim.api.nvim_set_var("chadtree_settings", Chadtree_settings)
