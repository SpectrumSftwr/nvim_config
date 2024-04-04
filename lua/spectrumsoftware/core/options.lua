vim.cmd("let g:netrw_liststyle = 3")

-- use spaces for tab and whatnot
vim.opt.expandtab=true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.number=true
vim.opt.numberwidth= 3
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Yank to system clipboard.
vim.opt.clipboard:append("unnamed,unnamedplus")
vim.opt.scrolloff = 10

-- Add Highlighted line to see where I am.
vim.opt.cursorline=true

-- Begin Scrolling at 12 lines
vim.opt.scrolloff = 12

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.keymap.set('i', 'kj', '<ESC>', { silent = true })			-- Exit insert mode with "KJ"
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})		-- Exit Visual mode with Leader 

vim.keymap.set('i', 'kj', '<ESC>', { silent = true })			-- Exit insert mode with "KJ"
vim.keymap.set('v', '<leader>kj', '<ESC>', {silent = true})		-- Exit Visual mode with Leader KJ


vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

