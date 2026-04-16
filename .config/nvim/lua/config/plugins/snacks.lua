require("snacks").setup({
	dashboard = { enabled = false },
	explorer = { enabled = true },
	-- indent = { enabled = true },
	-- input = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 3000,
	},
	picker = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	-- words = { enabled = true },
	terminal = { enabled = true },
	lazygit = { enabled = true },
	styles = {
		notification = {
			-- wo = { wrap = true } -- Wrap notifications
		},
	},
})

vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find Files" })

vim.keymap.set("n", "<leader>gL", function()
	Snacks.picker.git_log_file()
end, { desc = "Git Log File" })

vim.keymap.set("n", "<leader>,", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Laygit" })

vim.keymap.set("n", "<leader>/", function()
	Snacks.picker.grep()
end, { desc = "Grep" })

vim.keymap.set("n", "<leader>n", function()
	Snacks.picker.notifications()
end, { desc = "Notification history" })

vim.keymap.set("n", "<leader>tt", function()
	Snacks.terminal()
end, { desc = "Toggle Terminal" })
