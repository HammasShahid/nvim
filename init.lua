require "user.options"
require "user.keymaps"
require "user.plugins"

if vim.g.vscode then
else
    require "local.autocommands"
    require "local.colorscheme"
    require "local.nvimtree"
    require "local.comment"
    require "local.toggleterm"
    require "local.cmp"
    require "local.lsp"
    require "local.telescope"
    require "local.treesitter"
    require "local.autopairs"
    require "local.gitsigns"
    require "local.bufferline"
    require "local.illuminate"
    require "local.lualine"
    require "local.nvim-colorizer"
    require "local.project"
    require "local.alpha"
    -- TO Checkout
    require "local.dap"
    require "local.impatient"
    require "local.indentline"
end
