require('dashboard').setup {
	theme = 'hyper',
	shortcut_type = "number",
	hide = {
		statusline = false    -- hide statusline default is true
	},
	mru = { limit = 9, icon = 'your icon', label = 'test', },
}

vim.api.nvim_create_autocmd("VimEnter", {
    command = "Dashboard",
})
