return {
	"mrcjkb/rustaceanvim",
	version = "^7", -- Recommended
	lazy = false, -- This plugin is already lazy
	config = function()
		vim.g.rustaceanvim = {
			---@type rustaceanvim.lsp.ClientOpts
			server = {
				on_attach = function(client, bufnr)
					--  Run cargo check or another compatible command (f.x. clippy) in a background thread and provide LSP diagnostics based on the output of the command.
					--  This is only useful if you set the option, ['rust-analzyer'].checkOnSave = false
					vim.cmd.RustLsp("flyCheck")

					-- Set keybindings, etc. here.local bufnr = vim.api.nvim_get_current_buf()
					vim.keymap.set("n", "gra", function()
						vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
						-- or vim.lsp.buf.codeAction() if you don't want grouping.
					end, { silent = true, buffer = bufnr })
					vim.keymap.set(
						"n",
						"K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
						function()
							vim.cmd.RustLsp({ "hover", "actions" })
						end,
						{ silent = true, buffer = bufnr }
					)
				end,
				default_settings = {
					-- rust-analyzer language server configuration
				},
				-- ...
			},
			---@type rustaceanvim.dap.Opts
			dap = {
				-- ...
			},
		}
	end,
}
