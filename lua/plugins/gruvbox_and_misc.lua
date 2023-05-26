--  PURPOSE:   misc issues related to plugins, requiring manual tuning
return {

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  --  fixes `jsonls` can not be installed errors
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          mason = false,
        },
      },
    },
  },
}
