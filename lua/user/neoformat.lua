-- augroup fmt
--   autocmd!
--   autocmd BufWritePre * undojoin | Neoformat
-- augroup END

-- vim.cmd [[ autocmd BufWritePre *.js Neoformat prettier ]]
-- vim.cmd [[ autocmd BufWritePre *.ts Neoformat prettier ]]
-- vim.cmd [[ autocmd BufWritePre *.cs Neoformat csharpier ]]
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = { "*.cs" },
--     command = "Neoformat csharpier",
-- })

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = { "*.ts", "*.js" },
--     command = "Neoformat prettier",
-- })
