-- keymaps
local keymap = vim.keymap

vim.api.nvim_set_keymap(
	"n",
	"<Leader>sc",
	":source $MYVIMRC<CR>",
	{ noremap = true, silent = true, desc = "[s]ource [c]onfig" }
)

keymap.set("n", "<leader>gra", vim.lsp.buf.code_action, {})
-- page scrolling
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down, centre line" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up, centre line" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- vim.keymap.set('n', '<leader>sf', '<cmd>FzfLua files<CR>')

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Change text without putting it into the vim register,
-- see https://stackoverflow.com/q/54255/6064933
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "C", '"_C')
vim.keymap.set("n", "cc", '"_cc')
vim.keymap.set("x", "c", '"_c')

-- Replace visual selection with text in register, but not contaminate the register,
-- see also https://stackoverflow.com/q/10723700/6064933.
vim.keymap.set("x", "p", '"_c<Esc>p')
