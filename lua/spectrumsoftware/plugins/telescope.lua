return {
    "nvim-telescope/telescope.nvim",
    dependency = {{"nvim-lua/plenary.nvim"}},
    config = function ()
        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', function ()
            builtin.grep_string({ search = vim.fn.input("Grep > ")});
        end)
    end
}
