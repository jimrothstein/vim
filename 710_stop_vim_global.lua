--  CLAIM:   error global vim, fixed with this

require("lspconfig").sumneko_lua.setup({
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
    },
  },
})
