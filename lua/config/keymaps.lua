local keymap = vim.keymap.set

keymap("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })

keymap("n", "<F5>", ":OverseerRun<CR>", { silent = true })
keymap("n", "<F6>", ":OverseerToggle<CR>", { silent = true })

keymap("n", "<F9>", function() require("dap").toggle_breakpoint() end, { silent = true })
keymap("n", "<F8>", function() require("dap").continue() end, { silent = true })
keymap("n", "<F10>", function() require("dap").step_over() end, { silent = true })
keymap("n", "<F11>", function() require("dap").step_into() end, { silent = true })
keymap("n", "<F12>", function() require("dap").step_out() end, { silent = true })

keymap("n", "K", vim.lsp.buf.hover, { silent = true })
keymap("n", "gd", vim.lsp.buf.definition, { silent = true })
keymap("n", "<leader>ca", vim.lsp.buf.code_action, { silent = true })
keymap("n", "<leader>rn", vim.lsp.buf.rename, { silent = true })

keymap("n", "[d", vim.diagnostic.goto_prev, { silent = true })
keymap("n", "]d", vim.diagnostic.goto_next, { silent = true })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { silent = true })

keymap("i", "<S-Tab>", "<C-d>")

