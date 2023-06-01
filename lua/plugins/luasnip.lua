return {
  "L3MON4D3/LuaSnip",
  -- "rafamadriz/friendly-snippets",
  config = function()
    -- ~/.config/nvim - does NOT work
    local path = vim.fn.stdpath("config") .. "/lua/config/snippets.lua"
    --
    -- orignal
    --local path = vim.fn.stdpath("config") .. "/snippets.lua"

    require("luasnip.loaders.from_lua").lazy_load({
      paths = path,
    })
  end,
}
