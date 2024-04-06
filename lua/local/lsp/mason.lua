local servers = {
	-- "sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
  "marksman",
  "yamlls",
  "tailwindcss",
  "lua_ls",
  "dockerls",
  "docker_compose_language_service",
  "grammarly",
  "clangd",
  "intelephense",
  "ltex",
  "spectral",
  "ruff_lsp",
  "prismals"
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})
require("mason-null-ls").setup({
  ensure_installed = {
    "prettier",
    "black",
    "shfmt",
    -- "flake8",
    -- "ruff",
    "stylua",
    "eslint_d",
  },
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("local.lsp.handlers").on_attach,
		capabilities = require("local.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "local.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
