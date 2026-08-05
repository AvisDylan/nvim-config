return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local keymap = vim.keymap.set
        local builtin = require("telescope.builtin")
       
        keymap("n", "<leader>tf", builtin.find_files, {})
        keymap("n", "<leader>tg", builtin.live_grep, {})
        keymap("n", "<leader>tb", builtin.buffers, {})
        keymap("n", "<leader>th", builtin.help_tags, {})
    end,
}
