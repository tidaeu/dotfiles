local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Set Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Random Remap
keymap("v", "p", "<Nop>", opts)
keymap("v", "<S-p>", "<Nop>", opts)
keymap("v", "p", "<S-p>", opts)
keymap("v", "<S-p>", "p", opts)
keymap("v", "<leader>p", "\"_dP", opts)

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
keymap("n", "<C-w>", "<CMD>bd<CR>", opts)
keymap("n", "<leader>r", "<C-w><C-w>", opts)

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
-- keymap("n", "s", "<Nop>", opts)
keymap("n", "q", "<Nop>", opts)
keymap("n", "<C-t>", "<Nop>", opts)
-- keymap("n", "<C-t>", "<CMD>Neotree toggle<CR>", opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', "<cmd>Neotree close<CR><bar><cmd>Telescope find_files<CR>", {})
vim.keymap.set('n', '<C-\\>', "<cmd>Neotree close<CR><bar><cmd>Telescope projects theme=dropdown<CR>", {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- Neotree
vim.keymap.set('n', '<C-t>', '<cmd>Neotree reveal<CR>', {})
-- vim.keymap.set('n', '<leader>t', '<cmd>Neotree reveal<CR>', {})

-- Glance
-- vim.keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
vim.keymap.set('n', 'gr', '<CMD>Glance references<CR>')
vim.keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
vim.keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')

-- Bufferline
keymap("", "<Tab>", "<Nop>", opts)
keymap("", "<S-Tab>", "<Nop>", opts)
vim.keymap.set('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>')


vim.keymap.set('n', '<leader>db', '<CMD>Dashboard<CR>')


-- Set keymaps to control the debugger
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
  require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

