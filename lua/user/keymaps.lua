local keymap = vim.keymap.set
local opts = { silent = true }

-- Map leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
 
-- Normal
-- no highlight
keymap("n", "<leader>h", function() vim.cmd("nohlsearch") end, opts)
--
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


if vim.g.vscode then
    -- File Explorer visibility 
    keymap("n", "<leader>e", function() vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility") end, opts)
    -- 
    -- Better Window Navigation
    keymap("n", "<C-h>", function() vim.fn.VSCodeNotify("workbench.action.navigateLeft") end, opts)
    keymap("x", "<C-h>", function() vim.fn.VSCodeNotify("workbench.action.navigateLeft") end, opts)
    keymap("n", "<C-l>", function() vim.fn.VSCodeNotify("workbench.action.navigateRight") end, opts)
    keymap("x", "<C-l>", function() vim.fn.VSCodeNotify("workbench.action.navigateRight") end, opts)
    keymap("n", "<C-j>", function() vim.fn.VSCodeNotify("workbench.action.navigateDown") end, opts)
    keymap("x", "<C-k>", function() vim.fn.VSCodeNotify("workbench.action.navigateUp") end, opts)
    keymap("n", "<leader>t1", function() vim.fn.VSCodeNotify("workbench.action.terminal.focusAtIndex1") end, opts)
    keymap("n", "<leader>t2", function() vim.fn.VSCodeNotify("workbench.action.terminal.focusAtIndex2") end, opts)
    keymap("n", "<leader>c", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end, opts)

    -- Navigate tabs
    keymap("n", "<S-l>", function() vim.cmd("Tabnext") end, opts)
    keymap("n", "<S-h>", function() vim.cmd("Tabprev") end, opts)

    -- Better paste
    keymap("v", "p", '"_dP', opts)

    -- Plugins
    -- VSCodeCommentary
    keymap("x", "gc", "<Plug>VSCodeCommentary", opts)
    keymap("n", "gc", "<Plug>VSCodeCommentary", opts)
    keymap("o", "gc", "<Plug>VSCodeCommentary", opts)
    keymap("n", "gcc", "<Plug>VSCodeCommentaryLine", opts)

    --LSP
    keymap("n", "<leader>lf", function() vim.fn.VSCodeNotify("editor.action.formatDocument") end, opts)
else
    -- Better window navigation
    keymap("n", "<C-h>", "<C-w>h", opts)
    keymap("n", "<C-j>", "<C-w>j", opts)
    keymap("n", "<C-k>", "<C-w>k", opts)
    keymap("n", "<C-l>", "<C-w>l", opts)

    -- Resize with arrows
    keymap("n", "<C-Up>", ":resize -2<CR>", opts)
    keymap("n", "<C-Down>", ":resize +2<CR>", opts)
    keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
    keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

    -- Navigate buffers
    keymap("n", "<S-l>", ":bnext<CR>", opts)
    keymap("n", "<S-h>", ":bprevious<CR>", opts)

    -- Close buffers
    keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)
    -- Better paste
    keymap("v", "p", '"_dP', opts)
    --
    -- Insert --
    -- Press jk fast to enter
    keymap("i", "jk", "<ESC>", opts)

    -- Plugins --

    -- NvimTree
    keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

    -- Telescope
    keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
    keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
    keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
    keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

    -- Git
    keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

    -- Comment
    keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
    keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

    -- DAP
    keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
    keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
    keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
    keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
    keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
    keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
    keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
    keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
    keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
end
