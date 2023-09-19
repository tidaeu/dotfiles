local status, ts = pcall(require, "nvim-tree")
if not status then
    return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- vim.cmd([[
--   nnoremap - :NvimTreeToggle<CR>
-- ]])

local keymap = vim.keymap -- for conciseness
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

end


-- OR setup with some options
require("nvim-tree").setup({
	on_attach = my_on_attach,
  	-- keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>"), -- toggle file explorer
	sort_by = "case_sensitive",
	view = {
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	actions = {
		open_file = { 
			quit_on_open = true,
		}
	},

})

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
