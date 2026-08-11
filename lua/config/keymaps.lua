local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

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

keymap("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
keymap("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)

keymap("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

keymap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
keymap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
keymap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
keymap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
keymap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
keymap("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

keymap("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

keymap("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

keymap("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
keymap("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", opts)

keymap("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
keymap("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
keymap("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
keymap("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
keymap("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
