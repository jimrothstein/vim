return {
  "L3MON4D3/LuaSnip",
  -- "rafamadriz/friendly-snippets",
  config = function()
    -- jr changed:
    --    local path = vim.fn.stdpath("config") .. "/snippets"
    local path = "~/.config/nvim/lua/config/luasnip.lua"

    -- require("luasnip.loaders.from_snipmate").lazy_load({
    -- 	paths = path,
    -- })
    -- require("luasnip.loaders.from_vscode").lazy_load({
    -- 	paths = path,
    -- })
    require("luasnip.loaders.from_lua").lazy_load({
      paths = path,
    })
  end,
}
