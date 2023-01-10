-- local colorscheme = "tokyonight-moon"
-- local colorscheme = "gruvbox-material"
-- local colorscheme = "gruvbox"
-- local colorscheme = "nord"
-- local colorscheme = "onedark"
-- local colorscheme = "OceanicNext"
-- local colorscheme = "nightfly"
-- local colorscheme = "embark"
-- local colorscheme = "github_dimmed"
local colorscheme = "codemonkey"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

-- pcall(vim.cmd, "hi Normal guibg=none ctermbg=none")
-- pcall(vim.cmd, "hi EndOfBuffer guibg=none ctermbg=none")
-- pcall(vim.cmd, "hi LineNr guibg=none ctermbg=none")
-- pcall(vim.cmd, "hi VertSplit guibg=none ctermbg=none")
-- pcall(vim.cmd, "hi SignColumn guibg=none ctermbg=none")
-- pcall(vim.cmd, "hi NonText guibg=none ctermbg=none")
vim.cmd "hi Normal guibg=none"
-- vim.g.transparent_background = true        -- transparent background(Default: false)
-- vim.g.italic_comments = true               -- italic comments(Default: true)
-- vim.g.italic_keywords = true               -- italic keywords(Default: true)
-- vim.g.italic_functions = true              -- italic functions(Default: false)
-- vim.g.italic_variables = true              -- italic variables(Default: false)
