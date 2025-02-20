return{
    "neovim/nvim-lspconfig",
    lazy = false,
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities
                    })
                end,
            })
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action,{})
        end,
    },
}
