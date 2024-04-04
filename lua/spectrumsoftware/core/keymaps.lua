vim.g.mapleader = " "

vim.keymap.set('i', 'kj', '<ESC>', { silent = true })			-- Exit insert mode with "KJ"
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})		-- Exit Visual mode with Leader 

vim.keymap.set('i', 'kj', '<ESC>', { silent = true })			-- Exit insert mode with "KJ"
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})		-- Exit Visual mode with Leader KJ


vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Cool remaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")					-- when in Visual allow you to move line(s) down together
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")					-- When in visual allow you to move line(s) up together
vim.keymap.set('n', 'n', 'nzzzv')								-- when moving down in searching it stays centered
vim.keymap.set('n', 'N', 'Nzzzv')								-- When moving up in searches it stays centered


