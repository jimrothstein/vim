-- Keymaps are automatically loaded on the VeryLazy event - sudo luarocks install jsregexp
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Additional keymaps here
--
-- TAGS:    which-key, telescope.builtin
--
--
-- TODO
-- 2023-06-03
--      vim.keymap.set("n", "<leader>pv", vim.cmd.e)
-- 31MAY2023
--      > line 20, several good ex of "which-key", but ERRORs
--      - see ~23, ESC should <nowait>,  BUT I see many errors `wait` in use.22
-- local builtin = require("telescope.builtin")({
-- vim.keymap.set("n", "ppf", builtin.find_files({}))

-- vim.keymap.set("n", "<Leader>ps", function()
-- builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
--
-- Primeagan -  reverses two lines (driving me crazy)
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- })

--  easy ESC
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "kk", "<ESC>")

-- keeps prior word
-- vim.keymap.set("x", '<leader>p', "\"_dP)

--      required, not sure
require("telescope")

--- Sets Root Dir to HOME, gives ERROR TODO
vim.keymap.set("n", "<leader>fz", function()
  require("telesope.builtin").find_files({ cwd = "~" })
end)

--     keep cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
--  Stole from https://github.com/sum-rock/just-sum-nix/blob/master/homes/modules/neovim/lua/navigation.lua
--

--  ERROR
-- require("which-key").register({
--   w = {
--     name = "Windows",
--     q = { "<cmd>q<cr>", "Quit Window" },
--     Q = { "<cmd>qa<cr>", "Quit All Windows" },
--     h = { "<c-w>h", "Move Left" },
--     j = { "<c-w>j", "Move Down" },
--     k = { "<c-w>k", "Move Up" },
--     l = { "<c-w>l", "Move Right" },
--     s = { "<c-w>s", "Split Horizontally" },
--     v = { "<c-w>v", "Split Vertically" },
-- })
--   },

--   h = {
--     name = "Hop",
--     f = { function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false }) end, "Hop Forward on" },
--     F = { function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false }) end, "Hop Backward on" },
--     t = { function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 }) end, "Hop Forward to" },
--     T = { function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 }) end, "Hop Backward to" },
--   }
-- }, { prefix = "<leader>" })

-- ERROR
--   ["<C-U>"] = { "Scroll up" },
-- require("which-key").register({
--   ["<C-D>"] = { "Scroll down" },
--   ["<C-B>"] = { "Scroll up greater" },
--   ["<C-F>"] = { "Scroll down greater" },
--   ["<C-Y>"] = { "Scroll up lesser" },
-- })
--   ["<C-E>"] = { "Scroll down lesser" },

--  STOLE from :h which-key help

-- require("which-key").register({
--   f = {
--     name = "file", -- optional group name
--     f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--     r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false, buffer = 123 }, -- additional options for creating the keymap
--     n = { "New File" }, -- just a label. don't create any mapping
--     e = "Edit File", -- same as above
--     ["1"] = "which_key_ignore", -- special label to hide it in the popup
--     b = {
--       function()
--         print("bar")
--       end,
--       "Foobar",
--     }, -- you can also pass functions!
--   },
-- }, { prefix = "<leader>" })
