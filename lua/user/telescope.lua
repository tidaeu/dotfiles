local status_ok, _ = pcall(require, "telescope")

if(not status_ok) then 
	print("telescope be broken")
	return
end

vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

-- vim.api.nvim_create_autocmd("User TelescopeFindPre", {
--     command = "Neotree close",
-- })

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
     default_speed = 1,
		
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
	["<A-j>"] = require('telescope.actions').move_selection_next,
	["<A-k>"] = require('telescope.actions').move_selection_previous,
	["<A-S-j>"] = require('telescope.actions').preview_scrolling_down,
	["<A-S-k>"] = require('telescope.actions').preview_scrolling_up,
	["<C-t>"] = false,
 
	-- ["<A-S-k>"] = require('telescope.actions').preview_scrolling_up,
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    	scroll_speed = 1
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', "<cmd>Neotree close <CR> <BAR> <cmd> Telescope find_files<CR>", {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

