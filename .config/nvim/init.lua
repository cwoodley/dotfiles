vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- options
--
vim.cmd("set termguicolors")
vim.opt.cmdheight = 2
vim.opt.tabstop = 2 -- 2 spaces per tab
vim.opt.expandtab = true -- tabs are spaces
vim.opt.shiftwidth = 2 -- indent width

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.opt.wrap = false

-- better search options
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

vim.opt.backspace = "indent,start,eol" -- allow backspace in these conditions

vim.opt.clipboard:append("unnamedplus")

-- splitting defaults
vim.opt.splitright = true
vim.opt.splitbelow = true

-- use treesitter folding
vim.o.foldmethod = "expr"
-- Default to treesitter folding
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- Prefer LSP folding if client supports it
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client:supports_method("textDocument/foldingRange") then
			local win = vim.api.nvim_get_current_win()
			vim.wo[win][0].foldexpr = "v:lua.vim.lsp.foldexpr()"
		end
	end,
})
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- autocommands
--
-- Auto-create dir when saving a file, in case some intermediate directory does not exist
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = "*",
--   group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
--   callback = function(ctx)
--     local dir = fn.fnamemodify(ctx.file, ":p:h")
--     utils.may_create_dir(dir)
--   end,
-- })
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Create an augroup specifically for Rust-related autocommands
local rust_augroup = vim.api.nvim_create_augroup("RustAugroup", { clear = true })

-- Autocommand to format Rust files on the 'BufWritePre' event (before writing)
vim.api.nvim_create_autocmd("BufWritePre", {
	group = rust_augroup,
	pattern = "*.rs",
	callback = function()
		-- Ensure the LSP client is attached and supports formatting
		if vim.lsp.buf.format then
			vim.lsp.buf.format()
		end
	end,
})

require("keymaps")
require("config.lazy")
