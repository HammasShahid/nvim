-- Enable Transparency
local transparent_window = true

-- Installed Colorscheme
-- local colorscheme = "catppuccin-mocha"
local colorscheme = "tokyonight-moon"
-- local colorscheme = "gruvbox-material"
-- local colorscheme = "gruvbox"
-- local colorscheme = "nord"
-- local colorscheme = "onedark"
-- local colorscheme = "OceanicNext"
-- local colorscheme = "nightfly"
-- local colorscheme = "embark"
-- local colorscheme = "github_dimmed"
-- local colorscheme = "aurora"
-- local colorscheme = "darkplus"
-- local colorscheme = "rose-pine-main"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

-- Transparency
function enable_transparent_nvimtree()
  vim.cmd "hi NvimTreeNormal guibg=none ctermbg=none"
  vim.cmd "hi NvimTreeNormalNC guibg=none ctermbg=none"
  vim.cmd "hi NvimTreeEndOfBuffer ctermbg=none guibg=none"
end
function enable_transparent_telescope()
  vim.cmd "hi TelescopeBorder guibg=none ctermbg=none"
  vim.cmd "hi TelescopeNormal ctermbg=none guibg=none"
end
function enable_transparent_mode()
  vim.cmd "hi Normal ctermbg=none guibg=none"
  vim.cmd "hi EndOfBuffer ctermbg=none guibg=none"
  vim.cmd "hi SignColumn ctermbg=none guibg=none"
  vim.cmd "hi NormalNC ctermbg=none guibg=none"
  vim.cmd "hi MsgArea ctermbg=none guibg=none"
  vim.cmd "let &fcs='eob: '"

  enable_transparent_nvimtree()
  enable_transparent_telescope()
end

if transparent_window then
  enable_transparent_mode()
end
