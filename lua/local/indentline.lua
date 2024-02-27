local status_ok, ibl = pcall(require, "ibl")
if not status_ok then
  return
end

ibl.setup {
  indent = { char = "▏", },
  -- show_trailing_blankline_indent = false,
  -- show_first_indent_level = true,
  --use_treesitter = true,
 whitespace = {
    remove_blankline_trail = true,
  }, 
  scope = {
    enabled = true,
  },
  exclude = {
    buftypes = { "terminal", "nofile" },
    filetypes = { "help", "packer", "NvimTree" },
  },
}

local hooks = require "ibl.hooks"
hooks.builtin.hide_tab_space_indent_level = false 
