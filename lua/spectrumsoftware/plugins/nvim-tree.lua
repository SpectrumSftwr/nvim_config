return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true

        require("nvim-tree").setup({

            filters = {
                custom = {".DS_Store"},
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },
        })

        vim.keymap.set("n", "<c_n>", "<cmd>NvimTreeFindFileToggle<CR>")

    end
}
