require("nvim-treesitter").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"python",
		"c",
		"cpp",
		"lua",
		"vim",
		"vimdoc",
		"markdown",
		"markdown_inline",
		"json",
		"yaml",
		"xml",
		"make",
		"cmake",
		"bash",
	},
	sync_install = false,
	auto_install = true,
	ignore_install = {},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
