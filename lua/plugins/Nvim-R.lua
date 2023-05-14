--   If need to config r-languageserver, use neovim/lspconfig - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#r_language_server
--   But configure LSP is NOT done here..

-- need "__" to get <-
vim.cmd([[ syntax on ]])
vim.g.R_assign_map = "2"

return {
  -- add Nvim-R
  "jalvesaq/Nvim-R",
}

-- need "__" to get <-
-- vim.cmd[[ let R_assign = 2]]
--vim.g.R_assign_map = '<M-->'
--
