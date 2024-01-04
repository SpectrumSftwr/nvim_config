vim.g.mapleader=' '
vim.g.maplocalleader= ' '

-- use spaces for tab and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.number=true
vim.opt.numberwidth= 2
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.keymap.set('n','<leader>h', 'nohlsearch<CR>')
vim.keymap.set('i', 'kj', '<ESC>', { silent = true })
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})

-- Cool remaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>p', "\"_dp")
