return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        init = function()
            vim.g.barbar_auto_setup = false
        end,

        opts = {
            animation = true,
            auto_hide = false,
            tabpages = true,
            clickable = true,

            icons = {
                buffer_index = false,
                buffer_number = false,
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "" },
                    [vim.diagnostic.severity.WARN]  = { enabled = true, icon = "" },
                    [vim.diagnostic.severity.INFO]  = { enabled = false },
                    [vim.diagnostic.severity.HINT]  = { enabled = false },
                },
                gitsigns = {
                    added = { enabled = true, icon = "+" },
                    changed = { enabled = true, icon = "~" },
                    deleted = { enabled = true, icon = "-" },
                },
                separator = { left = "▎", right = "" },
                modified = { button = "●" },
                pinned = { button = "" },
            },

            sidebar_filetypes = {
                NvimTree = true,
            },
        },
    },
}
