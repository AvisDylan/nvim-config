return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = { "clangd", "jdtls", "rust_analyzer", "ts_ls", "html", "cssls", "asm_lsp", "zls", "glsl_analyzer", "lua_ls", "gopls", "ltex" },
        })

        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local servers = { "jdtls", "rust_analyzer", "ts_ls", "html", "cssls", "asm_lsp", "zls", "glsl_analyzer", "lua_ls",
            "gopls" }
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({
                capabilities = capabilities,
            })
        end

        lspconfig.sourcekit.setup({
            capabilities = capabilities,
        })

        lspconfig.ltex.setup({
            filetypes = { "markdown", "text", "latex" },
            settings = {
                ltex = {
                    language = "en-US,en-GB,it-IT",
                    checkFrequency = "save",
                },
            }
        })

        lspconfig.clangd.setup({
            capabilities = capabilities,
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
                "--fallback-style=llvm",
                "--query-driver=/usr/bin/g++,/usr/bin/gcc,/usr/bin/clang++,/usr/bin/clang",
            },
            init_options = {
                usePlaceholders = true,
                completeUnimported = true,
                clangdFileStatus = true,
            },
        })
    end
}
