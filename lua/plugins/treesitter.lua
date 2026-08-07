return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    commit = "7b6cc89", -- TODO put latest once issue is fixed
    config = function()
        require("nvim-treesitter").setup({

        })

        require("nvim-treesitter").install({ "all" })
    end,

    init = function()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end
}
