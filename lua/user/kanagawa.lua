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
					return {
									NormalFloat = { bg = "none" },
									FloatBorder = { bg = "NONE" },
									FloatTitle = { bg = "NONE" },
									TelescopePreviewBorder = {  fg = "#717C7C", bg = "NONE", },
									TelescopeResultsBorder = { fg = "#717C7C", bg = "NONE" },
									TelescopePromptBorder = { fg = "#717C7C", bg = "NONE" },
									DashboardHeader = { fg = "#98BB6C" },
									Visual = {bg = "#293c57" },
									GlanceWinBarFilename= {bg = "#2D4F67" }, -- Top bar and File Names
									GlanceWinBarTitle = {bg = "#2D4F67" }, -- Top bar and File Names
									GlanceWinBarFilepath = {bg = "#2D4F67" }, -- Top bar and File Names
									GlancePreviewNormal = {bg = "#252535" }, -- Background Preview 
									GlancePreviewBorderBottom = {bg = "#2D4F67" }, -- Top bar and File Names
									GlanceListBorderBottom = {bg = "#2D4F67" }, -- Top bar and File Names
									GlanceListNormal = {bg = "#252535" }, -- Background Preview 
									GlanceBorderTop = {bg = "#2D4F67" }, -- Top bar and File Names
									GlanceIndent = {bg = "#252535" }, -- Top bar and File Names
									GlancePreviewLineNr = {bg = "#252535" }, -- Top bar and File Names
									GlancePreviewSignColumn = {bg = "#252535" }, -- Top bar and File Names
								  GlancePreviewEndOfBuffer = {bg = "#252535" }, -- Top bar and File Names
								  GlanceFolderIcon = {bg = "#FFFFFF" }, -- Top bar and File Names
								  GlanceListCursorLine  = {bg = "#31313f" }, -- Top bar and File Names
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
