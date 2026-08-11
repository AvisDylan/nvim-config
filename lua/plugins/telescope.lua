return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-telescope/telescope-fzf-native.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
        "nvim-telescope/telescope-media-files.nvim",
        "nvim-telescope/telescope-dap.nvim",
        -- "nvim-telescope/telescope-symbols.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-project.nvim",
    },
    build = "make",
    config = function()
        local keymap = vim.keymap.set
        local builtin = require("telescope.builtin")

        -- require("telescope").load_extension("fzf")
        require("telescope").load_extension("live_grep_args")
        require("telescope").load_extension("media_files")
        require("telescope").load_extension("dap")
        require("telescope").load_extension("file_browser")
        -- require("telescope").load_extension("symbols")
        require("telescope").load_extension("project")

        keymap("n", "<leader>tf", builtin.find_files, {})
        keymap("n", "<leader>tg", builtin.live_grep, {})
        keymap("n", "<leader>tb", builtin.buffers, {})
        keymap("n", "<leader>th", builtin.help_tags, {})
        keymap("n", "<leader>tga", require("telescope").extensions.live_grep_args.live_grep_args, {})
        keymap("n", "<leader>ts", builtin.treesitter, {})
        keymap("n", "<leader>tm", require("telescope").extensions.media_files.media_files, {})
        keymap("n", "<leader>tdb", require("telescope").extensions.dap.list_breakpoints, {})
        keymap("n", "<leader>tdv", require("telescope").extensions.dap.variables, {})
        -- keymap("n", "<leader>te", require("telescope").extensions.symbols.symbols, {})
        keymap("n", "<leader>tfi", require("telescope").extensions.file_browser.file_browser, {})
        keymap("n", "<leader>tp", require("telescope").extensions.project.project, {})
    end,
}
