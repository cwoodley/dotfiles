return {
	{ "neovim/nvim-lspconfig" },
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "gopls" },
			automatic_enable = {
				exclude = {
					"rust_analyzer",
				},
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
}
