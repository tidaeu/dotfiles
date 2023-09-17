local status_ok, _ = pcall(require, "toggleterm")

if(not status_ok) then
	print("toggle term is broken")
	return
end
-- C:\Users\tdeuk\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -ExecutionPolicy Unrestricted -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

require'toggleterm'.setup{
	size = 20, 
	open_mapping = [[<A-\>]],
	-- open_mapping = [[<C-t>]],
	shade_terminals = true,
	shading_factor = 2,
	persist_size = true,
	close_on_exit = true,
	direction = 'float',
	shell = 'pwsh -NoLogo',
	float_opts = {
		border = "curved",
		winblend = 0,
		highlight = {
			border = "Normal",
			background = "Normal",
		}
	}
}
