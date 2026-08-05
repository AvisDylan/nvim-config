return {
    "folke/noice.nvim",
    dependencies = {
        "ManifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            cmdline = {
                view = "cmdline_popup"
            },
            views = {
                cmdline_popup = {
                    postion = {
                        row = "40%",
                        col = "50%",
                    },
                    size = {
                        width = 60,
                        height = "auto",
                    },
                },
            },
        })
    end,
}
