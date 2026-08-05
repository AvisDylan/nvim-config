return {
    "pianocomposer321/project-templates.nvim",

    cmd = { "LoadTemplate", "SaveAsTemplate" },

    config = function()
        require("project-templates").setup({
            templates_dir = vim.fn.expand("~/.templates"),
        })
    end,
}
