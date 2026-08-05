return {
    "stevearc/overseer.nvim",
    config = function()
        require("overseer").setup({
            templates = { "builtin", "cmake", "make", "cargo", "npm", "mix", "go", "maven" },
        })
    end
}
