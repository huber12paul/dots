require("which-key").setup({
	preset = "helix",
	delay = 300,
	icons = {
		rules = false,
		breadcrumb = " ",
		separator = "󱦰  ",
		group = "󰹍 ",
	},
	plugins = {
		spelling = {
			enabled = false,
		},
	},
	win = {
		height = {
			max = math.huge,
		},
	},
	spec = {
		{ mode = { "n", "v" }, { "<leader>f", group = "Find" } },
		{ mode = { "n", "v" }, { "<leader>g", group = "Git" } },
		{ mode = { "n", "v" }, { "<leader>o", group = "Opencode" } },
		{ mode = { "n", "v" }, { "<leader>t", group = "Test" } },
		{ mode = { "n", "v" }, { "[", group = "prev" } },
		{ mode = { "n", "v" }, { "]", group = "next" } },
		{ mode = { "n", "v" }, { "g", group = "goto" } },
	},
})

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })
