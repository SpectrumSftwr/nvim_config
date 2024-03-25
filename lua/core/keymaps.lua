vim.g.mapleader=' '
vim.g.maplocalleader= ' '

-- use spaces for tab and whatnot
vim.opt.expandtab=true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.number=true
vim.opt.numberwidth= 3
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Yank to system clipboard.
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.scrolloff = 10

-- Add Highlighted line to see where I am.
vim.opt.cursorline=true

-- Begin Scrolling at 12 lines
vim.opt.scrolloff = 12

-- Key mapping
vim.keymap.set('n','<leader>h', 'nohlsearch<CR>')				-- 
vim.keymap.set('i', 'kj', '<ESC>', { silent = true })			-- Exit insert mode with "KJ"
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})		-- Exit Visual mode with Leader KJ

-- Cool remaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")					-- when in Visual allow you to move line(s) down together 
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")					-- When in visual allow you to move line(s) up together
vim.keymap.set('n', 'n', 'nzzzv')								-- when moving down in searching it stays centered
vim.keymap.set('n', 'N', 'Nzzzv')								-- When moving up in searches it stays centered

vim.keymap.set('n', '<leader>p', "\"_dp")						-- Dont remember rn....
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
