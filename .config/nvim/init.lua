sh
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.cursorline = true
vim.o.list = true
vim.g.mapleader = " "

vim.o.ignorecase    = true    -- Ignore case during search
vim.o.incsearch     = true    -- Show search matches while typing
vim.o.infercase     = true    -- Infer case in built-in completion
vim.o.shiftwidth    = 2       -- Use this number of spaces for indentation
vim.o.smartcase     = true    -- Respect case if search pattern has upper case
vim.o.smartindent   = true    -- Make indenting smart
vim.o.spelloptions  = 'camel' -- Treat camelCase word parts as separate words

vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", '<leader>e', ":Explore<CR>")

