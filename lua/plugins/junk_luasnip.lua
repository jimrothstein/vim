--  2023-06-05
--  -   disabled this plugin
--  -   If lazyvim has luasnip inclucded, why add a `new` plugin?
--  -   Should work fine without this file.
--
--  -   Separate, how to add my own.
--[[
    -- stolen from https://github.com/s1n7ax/dotnvim/blob/main/lua/nvim/plugin/luasnip/init.lua
return {
	'L3MON4D3/LuaSnip',
	version = '1.2.1',
	name = 'luasnip',
	event = 'VeryLazy',       -- event triggers loading
	dependencies = { 'treesitter', 'snips' },
	config = function()
		local helper = require('nvim.plugin.luasnip.helper')

		require('luasnip').config.setup({
			updateevents = 'TextChanged,TextChangedI',
		})

		helper.register_snippets()
		helper.set_highlights()
		helper.register_keymaps()
	end,
}
--]]
--
--
--[[
--   original, but not working??
return {
  "L3MON4D3/LuaSnip",
  -- "rafamadriz/friendly-snippets",
  config = function()
    local path = vim.fn.stdpath("config") .. "/snippets"

    require("luasnip.loaders.from_lua").lazy_load({
      paths = path,
    })
  end,
}
--]]
