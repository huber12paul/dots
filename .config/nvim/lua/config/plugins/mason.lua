local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

-- mason_lspconfig.setup({
--   ensure_installed = {
--     "pyright",
--     "html",
--     "lua_ls",
--     "emmet_ls",
--     "clangd",
--   },
-- })

mason_tool_installer.setup({
	ensure_installed = {
		"prettier",
		"stylua",
	},
})
