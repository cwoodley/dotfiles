return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	config = function()
		local builtin = require("fzf-lua")

		builtin.register_ui_select()
		-- vim.keymap.set('n', '<leader>sf', '<cmd>FzfLua files<CR>')
		vim.keymap.set("n", "<leader>sf", builtin.files)
		vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua buffers<CR>")
		vim.keymap.set("n", "<leader>sq", "<cmd>FzfLua quickfix<CR>")
		vim.keymap.set("n", "<leader>sh", "<cmd>FzfLua helptags<CR>", { desc = "[S]earch [H]elp" })
		vim.keymap.set("n", "<leader>sk", "<cmd>FzfLua keymaps<CR>", { desc = "[S]earch [K]eymaps" })
		vim.keymap.set("n", "<leader>sg", "<cmd>FzfLua live_grep<CR>", { desc = "[S]earch by [G]rep" })
		vim.keymap.set("n", "<leader>sd", "<cmd>FzfLua diagnostics<CR>", { desc = "[S]earch [D]iagnostics" })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>sn", function()
			builtin.files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
