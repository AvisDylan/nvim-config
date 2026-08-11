return {
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("dracula")
        end
    },

    {
        "folke/tokyonight.nvim",
        lazy = true,
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
    },

    {
        "shaunsingh/nord.nvim",
        lazy = true,
    }
}

-- https://vimcolorschemes.com/i/trending
