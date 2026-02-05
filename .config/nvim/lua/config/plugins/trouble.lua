return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>sd",
			"<cmd>Trouble diagnostics toggle focus=true <cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false win.position=left<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=false win.position=left<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
	},
	modes = {
		diagnostics = {
			filter = {
				severity = vim.diagnostic.severity.ERROR,
			},
		},
	},
}
