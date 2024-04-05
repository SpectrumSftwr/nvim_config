return {
    "nvim-tree/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = {enable = true},
            autotag = {
                enable = true,
            },
            ensure_installed = { 
                "c", "lua","bash", 
                "css", "csv", "gitignore", 
                "html", "java", "javascript", 
                "json", "sql", "tsx", 
                "yaml", "xml" 
            },
        })
    end,
}
