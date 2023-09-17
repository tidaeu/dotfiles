local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Set Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " " 
vim.g.maplocalleader = " "

-- Split Navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<C-w>", "<C-w>q", opts)

-- Split Window Movement
keymap("n", "<A-S-h>", "<C-w>H", opts)
keymap("n", "<A-S-l>", "<C-w>L", opts)
keymap("n", "<A-S-j>", "<C-w>J", opts)
keymap("n", "<A-S-k>", "<C-w>K", opts)
keymap("n", "<C-w>", "<C-w>q", opts)

-- Reverse Previous and Next
keymap("n", "<A-o>", "<C-i>", opts)
keymap("n", "<A-i>", "<C-o>", opts)

-- Go to errors
keymap('n', "ge", '<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>', opts)
keymap('n', "gE", '<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>', opts)
keymap('n', "gw", '<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARNING})<CR>', opts)
keymap('n', "gW", '<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARNING})<CR>', opts)

-- Remap Navigate Lines
keymap("n", "#", "^", opts)
keymap("v", "#", "<Nop>", opts)
keymap("v", "#", "_", opts)

-- Get rid of substitue
keymap("n", "s", "<Nop>", opts)
keymap("n", "q", "<Nop>", opts)
-- keymap("n", "<C-t>", "<Nop>", opts)
