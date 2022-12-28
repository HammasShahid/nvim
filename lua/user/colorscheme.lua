-- local colorscheme = "tokyonight-moon"
-- local colorscheme = "gruvbox-material"
local colorscheme = "gruvbox"
-- local colorscheme = "nord"
-- local colorscheme = "onedark"
-- local colorscheme = "OceanicNext"
-- local colorscheme = "nightfly"
-- local colorscheme = "embark"
-- local colorscheme = "github_dimmed"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

pcall(vim.cmd, "hi Normal guibg=none ctermbg=none")
pcall(vim.cmd, "hi EndOfBuffer guibg=none ctermbg=none")
pcall(vim.cmd, "hi LineNr guibg=none ctermbg=none")
pcall(vim.cmd, "hi VertSplit guibg=none ctermbg=none")
pcall(vim.cmd, "hi SignColumn guibg=none ctermbg=none")
pcall(vim.cmd, "hi NonText guibg=none ctermbg=none")
