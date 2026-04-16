local actions = require("telescope.actions")
local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	pickers = {
		find_files = {
			theme = "ivy",
			hidden = true,
			no_ignore = false,
			no_ignore_parent = false,
		},
		oldfiles = {
			theme = "ivy",
		},
		live_grep = {
			theme = "ivy",
		},
		grep_string = {
			theme = "ivy",
		},
	},
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
			"dist",
			"build",
			"vendor",
			"%.lock",
			"%.png",
			"%.jpg",
			"%.jpeg",
			"%.gif",
			"%.svg",
		},
		path_display = { "smart" },
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
			},
		},
	},
})
