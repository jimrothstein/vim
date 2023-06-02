return {
  "L3MON4D3/LuaSnip",
  -- "rafamadriz/friendly-snippets",
  config = function()
    local path = vim.fn.stdpath("config") .. "/snippets.lua"
    -- print(vim.inspect(path))     prints nil
    --
    require("luasnip.loaders.from_lua").lazy_load({
      --      paths = path,
      --      -- experiment
      paths = "~/.config/nvim/lua/config/luasnip_testing.lua",
    })

    require("luasnip").config.set_config({
      history = true,
      update_events = "TextChanged,TextChangedI",
    })
  end, -- end functin

  -- give this a try?
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
}
