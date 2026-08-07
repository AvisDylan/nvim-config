return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")

        wk.setup({
            plugins = {
                presets = {
                    operators = true,
                    motions = true,
                    text_objects = true,
                    windows = true,
                    nav = true,
                    z = true,
                    g = true,
                },
            },
        })

        wk.add({
            { "<leader>t",   group = "telescope" },
            { "<leader>tf",  desc = "find files" },
            { "<leader>tg",  desc = "live grep" },
            { "<leader>tb",  desc = "buffers" },
            { "<leader>th",  desc = "help tags" },
            { "<leader>tga", desc = "grep args" },
            { "<leader>ts",  desc = "treesitter" },
            { "<leader>tdb", desc = "dap breakpoints" },
            { "<leader>tdv", desc = "dap variables" },
            { "<leader>te",  desc = "emoji/symbols" },
            { "<leader>tfi", desc = "file browser" },
        })
    end
}
