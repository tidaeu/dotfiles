-- One Dark Theme
local colorscheme = 'onedark'

-- Install Theme
local status, n = pcall(require, colorscheme) 
if (not status) then
	print(colorscheme .. "  is Not Installed! :(")
end

-- One Dark Theme Setup
require(colorscheme).setup {
	style = 'darker',
	transparent = true
}
require(colorscheme).load()
