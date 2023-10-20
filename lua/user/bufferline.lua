local status_ok, kanagawa = pcall(require, "bufferline")
if not status_ok then
	print("Bufferline not installed")
	return
end

require("bufferline").setup {
				options = {
								-- mode = 'buffers'
				}
}
