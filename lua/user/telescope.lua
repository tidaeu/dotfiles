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
     theme = "dropdown",
     layout_config = {
			center = {
				width = 0.5,
				height = 0.5,
			},
			
		},
		
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
  },
	extensions = {
		projects = { 
			on_project_selected = function(prompt_bufnr)
				-- Do anything you want in here. For example:
				project_actions.change_working_directory(prompt_bufnr, false)
				print("test2")
			end
		}
	}
}

require('telescope').load_extension('projects')
-- require('telescope').load_extension('project')
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<C-p>', "<cmd>Neotree close<CR><bar><cmd>Telescope find_files<CR>", {})
-- vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser<CR>",
--   { noremap = true }
-- )


