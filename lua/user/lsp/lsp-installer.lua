local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
	print("LSP Config not installed")
	return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers")
