vim.g.mapleader=' '
vim.g.maplocalleader= ' '

-- use spaces for tab and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.number=true
vim.opt.numberwidth= 2
vim.opt.relativenumber = true

vim.keymap.set('n','<leader>h', 'nohlsearch<CR>')
vim.keymap.set('i', 'kj', '<ESC>', { silent = true })


