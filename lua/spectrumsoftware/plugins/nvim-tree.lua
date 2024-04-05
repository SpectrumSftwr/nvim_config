return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        local nvimtree = require("nvim-tree").setup()

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true

        vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeFindFileToggle<CR>")
    end
}
