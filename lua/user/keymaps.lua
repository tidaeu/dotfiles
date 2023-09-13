local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Split Navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<C-w>", "<C-w>q", opts)

-- Reverse Previous and Next
keymap("n", "<A-o>", "<C-i>", opts)
keymap("n", "<A-i>", "<C-o>", opts)

-- Go to errors
keymap('n', "ge", '<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>', opts)
keymap('n', "gE", '<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>', opts)

-- Remap Navigate Lines
keymap("n", "+", "<Home>", opts)
keymap("n", "_", "<End>", opts)