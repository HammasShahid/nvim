require "user.options"
require "user.keymaps"
require "user.plugins"

if vim.g.vscode then
else
    require "local.colorscheme"
    require "local.cmp"
    require "local.lsp"
    require "local.telescope"
    require "local.treesitter"
    require "local.autopairs"
    require "local.comment"
    require "local.gitsigns"
    require "local.nvim-tree"
    require "local.bufferline"
    require "local.toggleterm"
    require "local.illuminate"
    require "local.lualine"
    require "local.nvim-colorizer"
    require "local.autocommands"
    require "local.project"
    require "local.alpha"
    -- TO Checkout
    require "local.dap"
    require "local.impatient"
    require "local.indentline"
end
