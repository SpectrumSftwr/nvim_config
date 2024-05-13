return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {"antosha417/nvim-lsp-file-operations", config = true},
        {"folke/neodev.nvim", opt = {} },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local keymap = vim.keymap

        vim.api.nvim_create_autocmd("LspAttach",{
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(bufnr)
                local opts = {buffer = bufnr.buf, remap = false,silent = true }
                keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end,
        })
        local capabilities = cmp_nvim_lsp.default_capabilities()
        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
                lspconfig["lua_ls"].setup({
                    capabilities = capabilities,
                    setttings = {
                        Lua = {
                            diagnostics = {
                                globals = {"vim"},
                            },
                            completion = {
                                callSnippet = "Replace",
                            }
                        },
                    },
                })
            end,
        })
    end,
}
