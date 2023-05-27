-- /home/jim/.config/nvim/lua/config/luasnip.lua
-- REF:     https://github.com/sbulav/dotfiles/blob/master/nvim/lua/config/snippets.lua
--
-- 2023-05-26
-- TODO:  lusnip not working at all.
-- 2023-05-13
--; TODO: add if/then tosnippet sep, wyneed to manually load this ??
--
local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local text = ls.text_node
local func = ls.function_node
local insert = ls.insert_node

local date = function()
  return { os.date("%Y-%m-%d") }
end

local filename = function()
  return { vim.fn.expand("%:p") }
end
--- ls.add_snippets(nil, {
ls.add_snippets("all", {
  all = {
    snip({
      trig = "date_jr",
      namr = "Date",
      dscr = "Date in the form of DD-MM-YYYY",
    }, {
      func(date, {}),
    }),
    snip({
      trig = "filename",
      namr = "Filename",
      dscr = "Absolute path to file",
    }, {
      func(filename, {}),
    }),
    snip({
      trig = "sep",
      namr = "Separate",
      dscr = "Separate sections",
    }, {
      text(" -------------------------------------------------- "),
      insert(0),
    }),
    snip({
      trig = "signature",
      namr = "Signature",
      dscr = "Name and Surname",
    }, {
      text("Sergei Bulavintsev"),
      insert(0),
    }),
  },
})
-------------------------
--
--
-- :h vim.bo.
local ft = vim.bo.filetype
--  :lua print(vim.bo.filetype)
--------------------------------------------------
