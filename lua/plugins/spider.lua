return {
    "chrisgrieser/nvim-spider",
    keys = {
        { "<C-Left>",  "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
        { "<C-Right>", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
    },
    config = function()
        require("spider").setup({
            skipInsignificantPunctuation = true,
        })
    end
}
