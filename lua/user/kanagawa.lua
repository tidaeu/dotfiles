local status_ok, kanagawa = pcall(require, "kanagawa")
if not status_ok then 
	print("Kanagawa not working")
	-- return
end

-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
	
        palette = {},
		theme = { wave = {
			ui = {
				float = {
					bg = "none",
					fg = "none",
					bg_border = "none",
					fg_border = "none",
				}
			}
			}, lotus = {}, dragon = {}, all = {} },
    },

    overrides = function(colors) -- add/modify highlights
    local theme = colors.theme
        return {  NormalFloat = { bg = "none" },
        FloatBorder = { bg = "NONE" },
        FloatTitle = { bg = "NONE" },
	TelescopePromptBorder = {bg = "NONE"},
        TelescopePreviewBorder = {  fg = "#717C7C", bg = "NONE", },
        TelescopeResultsBorder = { fg = "#717C7C", bg = "NONE" },
        TelescopePromptBorder = { fg = "#717C7C", bg = "NONE" },
        Visual = {bg = "#293c57" },
	}
    end,
    -- theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

-- vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 15, ctermfg = 15})
vim.cmd("colorscheme kanagawa")
