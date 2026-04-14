require("snacks").setup({
	picker = {
		reverse = false,
		sources = {
			files = {
				layout = { preview = false },
				hidden = true,
			},
			explorer = {
				hidden = true,
				layout = { preset = "sidebar", layout = { position = "right", width = 50 } },
				git_status = true,
			},
		},
	},
})

vim.keymap.set("n", "<leader>ee", function()
	Snacks.explorer()
end, { desc = "File Explorer" })

vim.keymap.set("n", "<leader>ef", function()
	Snacks.picker.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer (cwd)" })

vim.keymap.set("n", "<leader>,", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Laygit" })
