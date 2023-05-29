--- my_luasnip.lua (experimental)
--2023-05-27
--REF:   luansip documentation
--
--              Required mappings
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key
--- -----------------------------
--
local snip = ls.snippet
local text = ls.text_node
local func = ls.function_node
local insert = ls.insert_node

--  HELPERS
local date = function()
  return { os.date("%Y-%m-%d") }
end

local filename = function()
  return { vim.fn.expand("%:p") }
end

local filetype = function()
  return { vim.inspect(vim.filetype.match({ buf = 0 })) }
end
ls.add_snippets("all", {
  s("triggerA", { t("Wow! Text!") }),

  --  function
  -- local function reused_func(_,_, user_arg1)
  --     return user_arg1
  -- end,
  --
  -- s("trig", {
  --     f(reused_func, {}, {
  --         user_args = {"text"}
  --     }),
  --    -- f(reused_func, {}, {
  --    --     user_args = {"different text"}
  --    -- }),
  --         --
  -- }),
  --  type trigger<CR>, jumps to each i
  s("trigger", {
    t({ "After expanding, the cursor is here ->" }),
    i(1),
    t({ "", "After jumping forward once, cursor is here ->" }),
    i(2),
    t({ "", "After jumping once more, the snippet is exited there ->" }),
    i(0),
  }),
  --------------------------------------------------
  ------------------------ sep --------------------------
  --------------------------------------------------     --
  snip({
    trig = "sep",
    namr = "Separate",
    dscr = "Separate sections with --- ",
  }, {
    insert(1),
    text(" -------------------------------------------------- "),
    t("<reason>"),
    insert(0),
  }),
  ------------------------ date_jr --------------------------
  snip({
    trig = "date_jr",
    namr = "Date",
    dscr = "Date in the form of DD-MM-YYYY",
  }, {
    -- try local func = ls.function_node
    ls.function_node(date, {}),
  }),
  --------------------------------------------------
  snip({
    trig = "file",
    namr = "filename",
    dscr = "inerts file name",
  }, {
    t("--- "),
    ls.function_node(filename, {}),
  }),
  --------------------------------------------------
  --- /home/jim/.config/nvim/lua/config/my_luasnip.lua
  -------------------------------------------------- <reason>
  s("ternary", {
    -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
    i(1, "cond"),
    t(" ? "),
    i(2, "then"),
    t(" : "),
    i(3, "else"),
  }),
})
--
