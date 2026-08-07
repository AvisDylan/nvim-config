return {
    "3rd/image.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("image").setup({
            backend = "kitty",
            integrations = {
                markdown = { enabled = true },
                netrw = { enabled = true },
            },
            max_width = 100,
            max_height = 30,
            window_overlap_clear = {
                enabled = true,
                ft_ignore = { "cmp_menu", "noice" }
            },
        })
    end
}
