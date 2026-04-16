-- clear search highlights with <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

local function formatter()
	require("conform").format({ async = true, lsp_format = "fallback" })
end
vim.keymap.set("n", "<leader>F", formatter, { desc = "[F]ormat buffer" })

-- Open Neovim config files
vim.keymap.set("n", "<leader>en", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, { desc = "Open Neovim config files" })

vim.keymap.set("n", "<leader>cd", function()
	vim.chdir(vim.fn.getcwd())
end, { desc = "Change to current DIR" })

vim.keymap.set("n", "<leader>do", function()
	require("mini.diff").toggle_overlay()
end, { desc = "Toggle diff overlay" })
