vim.cmd("let g:netrw_liststyle = 3")
local o = vim.opt

o.number = true
o.relativenumber = true
o.wrap = false
o.swapfile = false
o.cursorline = true

-- search options
o.ignorecase    = true    -- Ignore case during search
o.incsearch     = true    -- Show search matches while typing
o.smartcase     = true    -- Respect case if search pattern has upper case
o.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
o.spelloptions  = 'camel' -- Treat camelCase word parts as separate words

-- spacing / indents
o.tabstop = 2             -- use spaces
o.shiftwidth    = 2       -- Use this number of spaces for indentation
o.autoindent = true
o.expandtab = true
o.smartindent   = true    -- Make indenting smart

-- split windows
o.splitright = true -- split vertical window to the right
o.splitbelow = true -- split horizontal window to the bottom


-- keybinds
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>o", ":source<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", '<leader>e', ":Explore<CR>")
vim.keymap.set("n", '<leader>wq', ":wq<CR>")
vim.keymap.set("n", '<leader>ww', ":w<CR>")
vim.keymap.set("n", '<leader>qq', ":q!<CR>")

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go to next tab" }) --  go to next tab

-- panes
vim.keymap.set("n", "<leader>sr", "<C-w>v", { desc = "Create right" })
vim.keymap.set("n", "<leader>sd", "<C-w>s", { desc = "Create below" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })
