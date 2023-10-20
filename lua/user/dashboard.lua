
require('dashboard').setup({
				theme = 'hyper',	
				hide = {	
								statusline = false    -- hide statusline default is true	
				},
				shortcut_type = 'number',
				config = {
								week_header = {
												enable = true,
								},
								header = banner, 
								project = { enable = false, limit = 8,  action = 'Telescope projects=' },
								mru = { limit = 8},
								footer = { "","","🙉🚀 Try not to suck today 🚀🙉" },
								shortcut = {
												{ desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
												{
																icon = ' ',
																icon_hl = '@variable',
																desc = 'Find Files',
																group = 'Label',
																action = 'Telescope find_files',
																key = '<C-p>',
												},
												{
																desc = ' Recent Projects',
																group = 'DiagnosticHint',
																action = 'Telescope projects theme=dropdown',
																key = '<leader>p',
												},
												{
																desc = '🌲Toggle Tree',
																group = 'DiagnosticHint',
																action = 'Neotree toggle',
																key = '<C-t>',
												},
												{
																desc = '  Quit',
																group = 'Number',
																action = 'q',
																key = 'q',
												},
												-- {
												--   desc = ' dotfiles',
												--   group = 'Number',
												--   action = 'os.execute(C:\\Users\\tdeuk\\AppData\\Local\\nvim\\lua\\user\\nvim-tree.lua)',
												--   key = 'd',
												-- },
								},
				},
})

vim.api.nvim_create_autocmd("VimEnter", {
				callback = function()
								if vim.fn.argv(0) == "" then  
												command = "Dashboard"
								end
				end,
})

-- function get_bufs_loaded()
--     local bufs_loaded = {}

--     for i, buf_hndl in ipairs(vim.api.nvim_list_bufs()) do
--         if vim.api.nvim_buf_is_loaded(buf_hndl) then
--             bufs_loaded[i] = buf_hndl
--         end
--     end

--     return bufs_loaded
-- end

-- vim.api.nvim_create_autocmd("BufLeave", {
-- 				callback = function()
-- 								print("BufLeave")
-- 								for k,v in pairs(get_bufs_loaded()) do 
-- 												print(k, " + ",v)
-- 												-- print(vim.api.nvim_buf_get_name(v))
-- 								end
-- 								print("BufLeave Done")

-- 				end,
-- })
-- vim.api.nvim_create_autocmd("VimEnter", {
--     if vim.fin.argv(0) then 
--     command = "Dashboard"
-- 	  end
-- })

