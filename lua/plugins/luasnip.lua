return {
  -- 2023-06-02
  -- attempt to restore to ORIGINAL config (that once worked)
  "L3MON4D3/LuaSnip",
  -- "rafamadriz/friendly-snippets",
  config = function()
    local path = vim.fn.stdpath("config") .. "/snippets.lua"
    --
    require("luasnip.loaders.from_lua").lazy_load({
      paths = path,
    })
  end, -- end functin
}
