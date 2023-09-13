-- augroup fmt
--   autocmd!
--   autocmd BufWritePre * undojoin | Neoformat
-- augroup END

-- vim.api.nvim_create_autocmd("BufWritePre * .js", { command = "Neoformat prettier" } )
vim.api.nvim_create_autocmd("BufWritePre * .cs", { command = "Neoformat csharpier" } )
