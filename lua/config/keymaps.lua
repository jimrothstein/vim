-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--      NOTHING WORKS
-- vim.keymap.set("n", "<leader>pv", vim.cmd.e)

local builtin = require("telescope.builtin")

-- vim.keymap.set("n", "ppf", builtin.find_files({}))

-- vim.keymap.set("n", "<Leader>ps", function()
-- builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
--
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--     keep cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
